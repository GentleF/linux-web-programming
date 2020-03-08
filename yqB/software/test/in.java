package yqB.software.test;

import java.io.*;

public class in {
    public static void main(String args[]) {
        try {//捕捉错误
            //读取txt文件
            FileInputStream input = new FileInputStream("C:\\Users\\dell\\Desktop\\yq_in.txt");
            InputStreamReader reader = new InputStreamReader(input,"gb2312");
            BufferedReader bufferedreader = new BufferedReader(reader);

            //写入txt文件
            FileOutputStream output = new FileOutputStream("C:\\Users\\dell\\Desktop\\yq_output.txt");
            OutputStreamWriter writer = new OutputStreamWriter(output,"gb2312");
            BufferedWriter bufferedwriter = new BufferedWriter(writer);

            //对文件内容进行处理
            String content = "";
            String province_value = "";
            String str = "待明确地区";
            while((content = bufferedreader.readLine()) != null) {
                String province = content.substring(0,3);
                String remaining = content.substring(4);
                if (!(province_value.equals(province))) {
                    if (province_value != "") {
                        bufferedwriter.write("\r\n");
                    }
                    bufferedwriter.write(province + "\r\n");
                    province_value = province;
                }
                if (!content.contains(str)){
                    bufferedwriter.write(remaining + "\r\n");
                    bufferedwriter.flush(); // 把缓存区内容压入文件
                }
            }
            input.close();
            output.close();
            reader.close();
            writer.close();
            bufferedreader.close();
            bufferedwriter.close();//关闭文件
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
