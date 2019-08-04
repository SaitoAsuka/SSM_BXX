package cn.tedu.ssm.bean;

public class Order {
    private int c_id;
    private String c_name;
    private String c_time;
    private int c_num;
    private double c_price;
    private  double c_total;
    private String c_state;
    private String c_image;
    private int uid;

    public Order() {
    }

    public Order(String c_state, int uid) {
        this.c_state = c_state;
        this.uid = uid;
    }

    public Order(int uid) {
        this.uid = uid;
    }

    public Order(int c_id, String c_name, String c_time, int c_num, double c_price, double c_total, String c_state, String c_image, int uid) {
        this.c_id = c_id;
        this.c_name = c_name;
        this.c_time = c_time;
        this.c_num = c_num;
        this.c_price = c_price;
        this.c_total = c_total;
        this.c_state = c_state;
        this.c_image = c_image;
        this.uid = uid;
    }

    @Override
    public String toString() {
        return "Order{" +
                "c_id=" + c_id +
                ", c_name='" + c_name + '\'' +
                ", c_time='" + c_time + '\'' +
                ", c_num=" + c_num +
                ", c_price=" + c_price +
                ", c_total=" + c_total +
                ", c_state='" + c_state + '\'' +
                ", c_image='" + c_image + '\'' +
                ", uid=" + uid +
                '}';
    }

    public int getC_id() {
        return c_id;
    }



    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getC_time() {
        return c_time;
    }

    public void setC_time(String c_time) {
        this.c_time = c_time;
    }

    public int getC_num() {
        return c_num;
    }

    public void setC_num(int c_num) {
        this.c_num = c_num;
    }

    public double getC_price() {
        return c_price;
    }

    public void setC_price(double c_price) {
        this.c_price = c_price;
    }

    public double getC_total() {
        return c_total;
    }

    public void setC_total(double c_total) {
        this.c_total = c_total;
    }

    public String getC_state() {
        return c_state;
    }

    public void setC_state(String c_state) {
        this.c_state = c_state;
    }

    public String getC_image() {
        return c_image;
    }

    public void setC_image(String c_image) {
        this.c_image = c_image;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
