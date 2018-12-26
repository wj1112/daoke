package com.doc.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * @author Inse_QM
 */
public final class RenameUtils {

    private RenameUtils(){}

    /**
     * 获取随机UUID
     * @return uuid String
     */
    private static String getUUID(){
        return UUID.randomUUID().toString().replace("-", "");
    }

    /**
     * 根据UUID重命名
     * @param filename 文件名
     * @return String
     */
    public static String getUUIDFilename() {
        return getUUID();
    }

    /**
     * 获取时间戳
     * @return String
     */
    private static String getTimeStamp() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        return sdf.format(new Date());
    }

    public static String getIPTimeFilename(String ip, String filename) {
//        System.out.println(ip);
        StringBuilder buffer = new StringBuilder();
        if (ip != null && ip.length() > 0) {
            // 进行拆分操作
            String[] s = ip.split("\\.");
            for (String s1 : s) {
                // 不够三位数字的要补零
                buffer.append(addZero(s1, 3));
            }
        }
        return buffer.append(getTimeStamp()).append("-").append(filename).toString();
    }

    private static String addZero(String str, int len) {
        StringBuilder s = new StringBuilder();
        s.append(str);
        while (s.length() < len) {
            s.insert(0, "0");
        }
        return s.toString();
    }

}
