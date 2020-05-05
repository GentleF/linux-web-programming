package yqB.software.test;

public class sort_method{
    public void sorttest(province[] province_infor) {//冒泡降序排列
        for (int i = 0; i < province_infor.length-1; i++) {
            for (int j = 0; j < province_infor.length-1-i; j++)
                if(province_infor[i] != null && province_infor[j + 1] != null){
                    if (province_infor[j] != null && province_infor[j].getProvnce_sum() < province_infor[j + 1].getProvnce_sum()) {
                        province temp_p = province_infor[j + 1];
                        province_infor[j + 1] = province_infor[j];
                        province_infor[j] = temp_p;
                    }
                }
            if(province_infor[i] != null){
                for(int x = 0;x < province_infor[i].getCitys().length-1;x++){
                    for(int y = 0;y < province_infor[i].getCitys().length-1-x;y++){
                        if(province_infor[i].getCitys()[y] != null && province_infor[i].getCitys()[y+1] != null){
                            if (province_infor[i].getCitys()[y].getCity_num() < province_infor[i].getCitys()[y+1].getCity_num()){
                                city temp_c = province_infor[i].getCitys()[y+1];
                                province_infor[i].getCitys()[y+1] = province_infor[i].getCitys()[y];
                                province_infor[i].getCitys()[y] = temp_c;
                            }
                        }
                    }
                }
            }
        }
    }
}
/*public class sort_method{
    public void sorttest(province[] province_infor) {
        for(int i = 1;i < province_infor.length;i++){
            for(int j = i;j > 0;j--) {
                if (province_infor[i-1] != null && province_infor[j-1] != null) {
                    if (province_infor[j].getProvnce_sum() < province_infor[j-1].getProvnce_sum()) {
                        province temp = province_infor[j-1];
                        province_infor[j-1] = province_infor[j];
                        province_infor[j] = temp;
                    } else {
                        break;
                    }
                }
            }
            if(province_infor[i-1] !=null){
                for(int x = 1;x < province_infor[i-1].getCitys().length;x++){
                    for (int y = x;y > 0;y--){
                        if (province_infor[i-1].getCitys()[y] != null && province_infor[i-1].getCitys()[y-1] != null){
                            if(province_infor[i-1].getCitys()[y].getCity_num() < province_infor[i-1].getCitys()[y-1].getCity_num()){
                                city temp = province_infor[i-1].getCitys()[y-1];
                                province_infor[i-1].getCitys()[y-1] = province_infor[i-1].getCitys()[y];
                                province_infor[i-1].getCitys()[y] = temp;
                            }else{
                                break;
                            }
                        }
                    }
                }
            }
        }
    }
}*/
