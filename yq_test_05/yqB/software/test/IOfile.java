package yqB.software.test;

import java.io.*;
import java.util.Arrays;

public class IOfile {
    FileInputStream fileinputstream;
    InputStreamReader reader;
    BufferedReader bufferedreader;
    StringBuilder sb;
    FileOutputStream fileoutputstream;
    OutputStreamWriter writer;
    BufferedWriter bufferedwriter;

    /*public String read(String fileinname) throws IOException{
        fileinputstream = new FileInputStream(fileinname);
        reader = new InputStreamReader(fileinputstream, "UTF-8");
        sb = new StringBuilder();
        bufferedreader = new BufferedReader(reader);
        String a = null;
        while((a = bufferedreader.readLine()) != null){
            sb.append(a + "\n");
        }
        String str = sb.toString();
        fileinputstream.close();
        reader.close();
        bufferedreader.close();
        return str;
    }*/
    public province[] read(String fileinname, String ofprovince) throws IOException {
        fileinputstream = new FileInputStream(fileinname);
        reader = new InputStreamReader(fileinputstream, "UTF-8");
        bufferedreader = new BufferedReader(reader);
        String content = "";
        String province_value = "";
        String str = "待明确地区";
        int num = 0;
        int i=0,j=0;
        province province = new province();
        city city = new city();
        province[] province_infor = new province[50];
        city[] city_infor = new city[500];

        while ((content = bufferedreader.readLine()) != null) {
            String front = content.substring(0, 3);
            String remaining = content.substring(4);
            String[] remaining_1 = remaining.split("\t");
            String city_1 = remaining_1[0];
            int number = Integer.parseInt(remaining_1[1]);
            if (content.contains(str)) continue;
            if (ofprovince != null && !ofprovince.equals(front)) continue;
            if (!(province_value.equals(front))) {
                if (province_value != "") {
                    province.setProvincename(province_value);
                    province.setCitys(city_infor);
                    province.setProvnce_sum(num);
                    province_infor[i] = province;
                    num = 0;
                    province = new province();
                    city_infor = new city[500];
                    i++;
                    j=0;
                }
            }
            city.setCityname(city_1);
            city.setCity_num(number);
            city_infor[j] = city;
            num = num + number;
            province_value = front;
            city = new city();
            j++;
        }
        province.setProvincename(province_value);
        province.setCitys(city_infor);
        province.setProvnce_sum(num);
        province_infor[i] = province;
        //Arrays.fill(province_infor, province);
        //System.out.println(province_infor);
        return province_infor;
    }

    public void write(String fileoutname, province[] province_infor) throws IOException {
        fileoutputstream = new FileOutputStream(fileoutname);
        writer = new OutputStreamWriter(fileoutputstream, "UTF-8");
        bufferedwriter = new BufferedWriter(writer);
        for (int i = 0; i < province_infor.length; i++) {
            if (province_infor[i] != null) {
                bufferedwriter.write(province_infor[i].getProvincename() + '\t' + province_infor[i].getProvnce_sum() + "\r\n");
                for (int j = 0; j < province_infor[i].getCitys().length; j++) {
                    if (province_infor[i].getCitys()[j] != null) {
                        bufferedwriter.write(province_infor[i].getCitys()[j].getCityname() + '\t' + province_infor[i].getCitys()[j].getCity_num() + "\r\n");
                        bufferedwriter.flush();
                        //System.out.println(province_infor[i].getCitys()[j].getCityname() + '\t' + province_infor[i].getCitys()[j].getCity_num() + "\r\n");
                    }
                }
            }
            bufferedwriter.write("\r\n");
            bufferedwriter.flush();
        }
        fileoutputstream.close();
        writer.close();
        bufferedwriter.close();
    }
}
