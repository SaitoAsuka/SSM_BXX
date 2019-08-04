package cn.tedu.ssm.bean;

import java.io.Serializable;

public class Goods implements Serializable {
    private int g_id;
    private String g_name;
    private double g_price;
    private String g_info;
    private String g_imgpath;
    private int g_sales;
    private String g_type;
    private int stock;
    private String add_user;

    public Goods(String g_name, double g_price, String g_info, String g_type, String add_user, int stock) {
        this.g_name = g_name;
        this.g_price = g_price;
        this.g_info = g_info;
        this.g_type = g_type;
        this.stock = stock;
        this.add_user = add_user;
    }

    public Goods(int g_id, String g_name, double g_price, String g_info, String g_imgpath, int g_sales, String g_type, String add_user, int stock) {
        this.g_id = g_id;
        this.g_name = g_name;
        this.g_price = g_price;
        this.g_info = g_info;
        this.g_imgpath = g_imgpath;
        this.g_sales = g_sales;
        this.g_type = g_type;
        this.stock = stock;
        this.add_user = add_user;
    }

    public String getAdd_user() {
        return add_user;
    }

    public void setAdd_user(String add_user) {
        this.add_user = add_user;
    }

    public Goods(String g_type) {
        this.g_type = g_type;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }




    public Goods(int g_id) {
        this.g_id = g_id;
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

    public double getG_price() {
        return g_price;
    }

    public void setG_price(double g_price) {
        this.g_price = g_price;
    }

    public String getG_info() {
        return g_info;
    }

    public void setG_info(String g_info) {
        this.g_info = g_info;
    }

    public String getG_imgpath() {
        return g_imgpath;
    }

    public void setG_imgpath(String g_imgpath) {
        this.g_imgpath = g_imgpath;
    }

    public int getG_sales() {
        return g_sales;
    }

    public void setG_sales(int g_sales) {
        this.g_sales = g_sales;
    }

    public String getG_type() {
        return g_type;
    }

    public void setG_type(String g_type) {
        this.g_type = g_type;
    }
}
