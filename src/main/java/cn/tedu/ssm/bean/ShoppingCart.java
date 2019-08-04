package cn.tedu.ssm.bean;

public class ShoppingCart {
    private int uid;
    private int g_id;
    private String g_name;
    private String g_info;
    private double g_price;
    private int g_num;
    private double g_total;
    private String g_imgpath;

    public ShoppingCart(int uid, int g_id, String g_name, String g_info, double g_price, String g_imgpath) {
        this.uid = uid;
        this.g_id = g_id;
        this.g_name = g_name;
        this.g_info = g_info;
        this.g_price = g_price;
        this.g_imgpath = g_imgpath;
    }

    public ShoppingCart(int g_id) {
        this.g_id = g_id;
    }

    public ShoppingCart(int uid, int g_id, String g_name, String g_info, double g_price, int g_num, double g_total, String g_imgpath) {
        this.uid = uid;
        this.g_id = g_id;
        this.g_name = g_name;
        this.g_info = g_info;
        this.g_price = g_price;
        this.g_num = g_num;
        this.g_total = g_total;
        this.g_imgpath = g_imgpath;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getG_id() {
        return g_id;
    }


    public String getG_name() {
        return g_name;
    }

    public void setG_name(String g_name) {
        this.g_name = g_name;
    }

    public String getG_info() {
        return g_info;
    }

    public void setG_info(String g_info) {
        this.g_info = g_info;
    }

    public double getG_price() {
        return g_price;
    }

    public void setG_price(double g_price) {
        this.g_price = g_price;
    }

    public int getG_num() {
        return g_num;
    }

    public void setG_num(int g_num) {
        this.g_num = g_num;
    }

    public double getG_total() {
        return g_total;
    }

    public void setG_total(double g_total) {
        this.g_total = g_total;
    }

    public String getG_imgpath() {
        return g_imgpath;
    }

    public void setG_imgpath(String g_imgpath) {
        this.g_imgpath = g_imgpath;
    }
}
