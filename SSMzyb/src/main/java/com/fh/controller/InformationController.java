package com.fh.controller;

import com.fh.model.Information;
import com.fh.model.Role;
import com.fh.model.User;
import com.fh.service.IInformationService;
import com.fh.service.IReceiptService;
import com.fh.service.IRoleService;
import com.fh.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/Information")
public class InformationController {
    @Autowired
    private IRoleService roleService;
    @Autowired
    private IUserService userService;
    @Autowired
    private IInformationService iInformationService;
    @Autowired
    private IReceiptService receiptService;



    @RequestMapping("/toPostList")
    public String toPostList(HttpSession session,Model model){
        User loginUser = (User)session.getAttribute("loginUser");
        List<Information> list = iInformationService.getInformationListByPostUserId(loginUser.getId());
        for (Information i : list) {
            List<User> userList = receiptService.getReceiveUserNameListByInformationId(i);
            String names = "";
            if (userList.size()>0) {
                for (User u : userList) {
                    names += ";" + u.getRealName();
                }
                ;
                names = names.substring(1);
                i.setPostUserRealName(names);
            }
        }
        model.addAttribute("list",list);
        return "information/postList";
    };

    @RequestMapping("/toList")
    public String toList(){
        return "information/informationList";
    };


    @RequestMapping("/toParticularPost")
    public String toParticularPost(Information information,Model model,HttpSession session){
        User user = (User)session.getAttribute("loginUser");
        Information i = iInformationService.getInformationById(information);
        if(i.getPostUserId()==user.getId()){
            List<User> userList = receiptService.getReceiveUserNameListByInformationId(i);
            model.addAttribute("information",i);
            model.addAttribute("userList",userList);
        };
        return "information/informationParticular";
    };

    @RequestMapping("/toreceiveList")
    public String toreceiveList(HttpSession session,Model model){
        User loginUser = (User)session.getAttribute("loginUser");
        List<Information> list = iInformationService.getInformationListByUserId(loginUser.getId());
        model.addAttribute("list",list);
        return "information/receiveList";
    };

    @RequestMapping("/toInformationParticular")
    public String toInformationParticular(Information information,Model model,HttpSession session){

        User user = (User)session.getAttribute("loginUser");

        information = iInformationService.getInformationByIdAndUserId(information,user);
        List<User> userList = receiptService.getReceiveUserNameListByInformationId(information);
        int flag = 0;
        for (User u:userList) {
            if(u.getId() == user.getId()){
                flag = 1;
                break;
            }
        }
        if(flag == 1){
            if(information.getLook()==0){
                receiptService.updateLookByInformationIdAndUserId(information.getId(),user.getId(),1);
                if(information.getReceipt()==1){
                    Information in = new Information();
                    in.setType(2);
                    in.setTitle("回执信息");
                    in.setContent("用户:" + user.getRealName() + "," + "已查看消息:" + information.getTitle() + "。");
                    in.setPostUserId(user.getId());
                    in.setPostTime(new Date());
                    Set<Integer> set = new HashSet<Integer>();
                    set.add(information.getPostUserId());
                    iInformationService.addInformation(in,set);
                };
            }


            model.addAttribute("information",information);
            model.addAttribute("userList",userList);
        }

        return "information/informationParticular";
    };

    @RequestMapping("/toMenu")
    public String toMenu(Model model){
        List<Role> roleList = roleService.queryRoleList();
        List<User> userList = userService.queryAllUserList();
        model.addAttribute("roleList",roleList);
        model.addAttribute("userList",userList);
        return "information/menu";
    };

    @RequestMapping("/addInformation")
    private String addInformation(Information information, HttpSession session){
            String[] idArr = information.getRoleUserIds().split(";");
        if(idArr.length > 0){

            User loginUser = (User)session.getAttribute("loginUser");
            information.setPostUserId(loginUser.getId());
            information.setPostTime(new Date());
            information.setType(0);
            Set<Integer> userId = new HashSet<Integer>();
            for (int i=0;i<idArr.length;i++){
                if(idArr[i].substring(0,1).equals("r")){
                    int roleId = Integer.valueOf(idArr[i].substring(1));
                    List<User> userList = userService.getUserByRoleId(roleId);
                    for (User user :userList) {
                        userId.add(user.getId());
                    }
                }else{
                    userId.add(Integer.valueOf(idArr[i]));
                }
            }

            iInformationService.addInformation(information,userId);

        };

        return "redirect:/Information/toList.do";
    };

}
