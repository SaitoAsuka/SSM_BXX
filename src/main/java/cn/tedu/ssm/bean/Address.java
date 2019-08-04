package cn.tedu.ssm.bean;

public class Address {
    private int uid;
    private String r_name;
    private String r_province;
    private  String r_city;
    private  String r_district;
    private String r_detail;
    private String r_phone;
    private String r_addname;


    public Address(int uid) {
        this.uid = uid;
    }

    public Address(int uid, String r_name, String r_province, String r_city, String r_district, String r_detail, String r_phone, String r_addname) {
        this.uid = uid;
        this.r_name = r_name;
        this.r_province = r_province;
        this.r_city = r_city;
        this.r_district = r_district;
        this.r_detail = r_detail;
        this.r_phone = r_phone;
        this.r_addname = r_addname;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getR_name() {
        return r_name;
    }

    public void setR_name(String r_name) {
        this.r_name = r_name;
    }

    public String getR_province() {
        return r_province;
    }

    public void setR_province(String r_province) {
        this.r_province = r_province;
    }

    public String getR_city() {
        return r_city;
    }

    public void setR_city(String r_city) {
        this.r_city = r_city;
    }

    public String getR_district() {
        return r_district;
    }

    public void setR_district(String r_district) {
        this.r_district = r_district;
    }

    public String getR_detail() {
        return r_detail;
    }

    public void setR_detail(String r_detail) {
        this.r_detail = r_detail;
    }

    public String getR_phone() {
        return r_phone;
    }

    public void setR_phone(String r_phone) {
        this.r_phone = r_phone;
    }

    public String getR_addname() {
        return r_addname;
    }

    public void setR_addname(String r_addname) {
        this.r_addname = r_addname;
    }



}
