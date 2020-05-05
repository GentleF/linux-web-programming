package yqB.software.test;

import java.io.IOException;

public class test5 {
    public static void main(String[] args) throws IOException {
        String fileinname = "./yq_in_05.txt";
        String fileoutname = "./yq_out_05.txt";
        String ofprovince = null;//筛选出全部省份
        //String ofprovince = "河南省";//筛选条件:筛选出xx省信息
        IOfile iofile = new IOfile();
        province[] information = iofile.read(fileinname,ofprovince);//数据存放的数组
        sort_method sort_1 = new sort_method();
        sort_1.sorttest(information);//排序
        iofile.write(fileoutname,information);
    }
}
