package yqB.software.test;
import java.io.*;
import java.util.*;

public class test4 {
    public static void main(String args[]) {
        System.out.println("请输入文件名：");
        Scanner input_a = new Scanner(System.in);
        String[] input = input_a.nextLine().split(" ");
        String fileinname = input[0];
        String fileoutname = input[1];
        String ofprovince = null;
        if(input.length > 2){
            ofprovince = input[2];
        }
        HashMap<String,Integer> province_sum = new HashMap<>();//省份和省份总数
        HashMap<String,Integer> city = new HashMap<>();//城市和城市数目
        HashMap<String,HashMap> information = new HashMap<>();//省份和城市信息

        try {
            FileInputStream fileinputstream = new FileInputStream(fileinname);
            FileOutputStream fileoutputstream = new FileOutputStream(fileoutname);
            InputStreamReader reader = new InputStreamReader(fileinputstream, "UTF-8");
            BufferedReader bufferedreader = new BufferedReader(reader);
            OutputStreamWriter writer = new OutputStreamWriter(fileoutputstream, "UTF-8");
            BufferedWriter bufferedwriter = new BufferedWriter(writer);

            String content = "";
            String province_value = "";
            String str = "待明确地区";
            int num = 0;
            while((content = bufferedreader.readLine()) != null) {
                String front = content.substring(0,3);
                String remaining = content.substring(4);
                String[] remaining_1 = remaining.split("\t");
                String city_1 = remaining_1[0];
                int number = Integer.parseInt(remaining_1[1]);
                if(content.contains(str)) continue;
                if(ofprovince != null && !ofprovince.equals(front)) continue;
                if (!(province_value.equals(front))) {
                    if (province_value != "") {
                        information.put(province_value, city);
                        province_sum.put(province_value, num);
                        num = 0;
                        city = new HashMap<>();
                    }
                }
                city.put(city_1,number);
                num = num + number;
                province_value = front;
            }
            information.put(province_value,city);
            province_sum.put(province_value,num);

            List<Map.Entry<String,Integer>> ListofProvince = new ArrayList<>(province_sum.entrySet());
            Collections.sort(ListofProvince,new Comparator<Map.Entry<String, Integer>>(){//sort方法对省从大到小排序
                @Override
                public int compare(Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2) {
                    return o2.getValue().compareTo(o1.getValue());
                }
            });

            for(int i = 0 ;i < ListofProvince.size();i++){
                bufferedwriter.write(ListofProvince.get(i).getKey() + "---" + ListofProvince.get(i).getValue() + "\r\n");//将省份信息写入文件
                bufferedwriter.flush();
                List<Map.Entry<String ,Integer>> ListofCity = new ArrayList<>(information.get(ListofProvince.get(i).getKey()).entrySet());
                Collections.sort(ListofCity,new Comparator<Map.Entry<String, Integer>>() {//sort方法对市从大到小排序
                    @Override
                    public int compare(Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2) {
                        return o2.getValue().compareTo(o1.getValue());
                    }
                });
                for(int j = 0;j < ListofCity.size();j++){
                    bufferedwriter.write(ListofCity.get(j).getKey() + "\t" + ListofCity.get(j).getValue() + "\r\n");//将城市信息写入文件
                    bufferedwriter.flush();
                }
                bufferedwriter.write("\r\n");
                bufferedwriter.flush();
            }
            System.out.println("Success!");

            fileinputstream.close();
            fileoutputstream.close();
            reader.close();
            writer.close();
            bufferedreader.close();
            bufferedwriter.close();
        } catch (FileNotFoundException e) {
            System.out.println("文件不存在！");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}