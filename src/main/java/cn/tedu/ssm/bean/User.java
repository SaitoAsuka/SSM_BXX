package cn.tedu.ssm.bean;

public class User {
    private int uid;
    private String u_name;
    private String u_password;
    private String u_phone;
    private String u_nickname;

    public User(int uid, String u_password) {
        this.uid = uid;
        this.u_password = u_password;
    }

    @Override
    public String toString() {
        return "User{" +
                "u_id=" + uid +
                ", u_name='" + u_name + '\'' +
                ", u_password='" + u_password + '\'' +
                ", u_phone='" + u_phone + '\'' +
                ", u_nickname='" + u_nickname + '\'' +
                '}';
    }

    public User(String u_name, String u_password, String u_phone, String u_nickname) {
        this.u_name = u_name;
        this.u_password = u_password;
        this.u_phone = u_phone;
        this.u_nickname = u_nickname;
    }

    public User(int uid, String u_name, String u_password, String u_phone) {
        this.uid = uid;
        this.u_name = u_name;
        this.u_password = u_password;
        this.u_phone = u_phone;
    }

    public User() {
    }

    public User(String u_name, String u_password) {
        this.u_name = u_name;
        this.u_password = u_password;
    }

    public int getU_id() {
        return uid;
    }


    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getU_password() {
        return u_password;
    }

    public void setU_password(String u_password) {
        this.u_password = u_password;
    }

    public String getU_phone() {
        return u_phone;
    }

    public void setU_phone(String u_phone) {
        this.u_phone = u_phone;
    }

    public String getU_nickname() {
        return u_nickname;
    }

    public void setU_nickname(String u_nickname) {
        this.u_nickname = u_nickname;
    }
}
