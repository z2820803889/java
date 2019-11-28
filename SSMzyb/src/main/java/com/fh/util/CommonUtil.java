package com.fh.util;

import java.io.File;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;

public class CommonUtil {
	
	public static String formatDate(Date date){
		if(date == null){
			return "";
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}
	
	public static Date parseDate(String str) throws ParseException{
		if(StringUtils.isBlank(str)){
			return null;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.parse(str);
	}

    public static Date parseDate2(String str) throws ParseException{
        if(StringUtils.isBlank(str)){
            return null;
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.parse(str);
    }



    /**
     * 
     * @Title: countFileSize
     * @Description: 计算上传附件的大小
     * @author shangfeng @param size
     * @return @throws
     */
    public static String countFileSize(Long size) {
        DecimalFormat dft = new DecimalFormat("0.00");
        if (size < 1024) {
            return size + "B";
        } else if (size < 1024 * 1024) {
            double dsize = size;
            return dft.format(dsize / 1024) + "KB";
        } else if (size < 1024 * 1024 * 1024) {
            double dsize = size;
            return dft.format(dsize / (1024 * 1024)) + "M";
        } else {
            return size + "";
        }

    }

    /**
     * <pre>
     * getRemoteAddr(获取IP地址)   
     * 创建人：onlyShangfeng 1916015158@qq.com   
     * 创建时间：2018年8月21日 下午2:23:40    
     * 修改人：onlyShangfeng 1916015158@qq.com      
     * 修改时间：2018年8月21日 下午2:23:40    
     * 修改备注： 
     * &#64;param request
     * &#64;return
     * </pre>
     */
    public static String getRemoteAddr(HttpServletRequest request) {
        String ip = request.getHeader("X-Forwarded-For");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }

    /**
     * <pre>
     * getDateTime(这里用一句话描述这个方法的作用)   
     * 创建人：onlyShangfeng 1916015158@qq.com   
     * 创建时间：2018年8月27日 下午4:08:17    
     * 修改人：onlyShangfeng 1916015158@qq.com      
     * 修改时间：2018年8月27日 下午4:08:17    
     * 修改备注： 
     * &#64;return
     * </pre>
     */
    public static String getDateTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        return sdf.format(new Date());
    }

    /**
     * <pre>
     * getDateMessage(时间的年月日时分秒)   
     * 创建人：onlyShangfeng 1916015158@qq.com   
     * 创建时间：2018年8月27日 下午4:08:21    
     * 修改人：onlyShangfeng 1916015158@qq.com      
     * 修改时间：2018年8月27日 下午4:08:21    
     * 修改备注： 
     * &#64;return
     * </pre>
     */
    public static String getDateMessage(Date date) {
        if (date == null) {
            return "";
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(date);
    }

    /**
     * <pre>
     * getDateMessage(时间的年月日时分秒)   
     * 创建人：onlyShangfeng 1916015158@qq.com   
     * 创建时间：2018年8月27日 下午4:08:21    
     * 修改人：onlyShangfeng 1916015158@qq.com      
     * 修改时间：2018年8月27日 下午4:08:21    
     * 修改备注： 
     * &#64;return
     * </pre>
     */
    public static Date getStringToDate(String datestr) {

        if (StringUtils.isBlank(datestr)) {
            return null;
        }
        Date date = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            date = sdf.parse(datestr);
        } catch (ParseException e) {
            date = null;
        }
        return date;
    }

    /**
     * <pre>
     * getDateMessage(时间的年月日时分秒)   
     * 创建人：onlyShangfeng 1916015158@qq.com   
     * 创建时间：2018年8月27日 下午4:08:21    
     * 修改人：onlyShangfeng 1916015158@qq.com      
     * 修改时间：2018年8月27日 下午4:08:21    
     * 修改备注： 
     * &#64;return
     * </pre>
     */
    public static String getDateNYR(Date date) {
        if (date == null) {
            return "";
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(date);
    }

}
