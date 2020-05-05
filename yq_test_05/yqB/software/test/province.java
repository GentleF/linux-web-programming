package yqB.software.test;

public class province{
    String provincename;//省份名
    int provnce_sum;//省份总数
    city[] citys;//城市数组

    public String getProvincename() {
        return provincename;
    }
    public void setProvincename(String provincename) {
        this.provincename = provincename;
    }
    public int getProvnce_sum() {
        return provnce_sum;
    }
    public void setProvnce_sum(int provnce_sum) {
        this.provnce_sum = provnce_sum;
    }
    public city[] getCitys() {
        return citys;
    }
    public void setCitys(city[] citys) {
        this.citys = citys;
    }
}
