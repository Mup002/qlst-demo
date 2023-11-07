package entity;

public class Thanhvien741 {
    private int id;
    private String username;
    private String password;
    private String hoten;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public void setNgaysinh(String ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public void setDt(String dt) {
        this.dt = dt;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getHoten() {
        return hoten;
    }

    public String getNgaysinh() {
        return ngaysinh;
    }

    public String getDt() {
        return dt;
    }

    public String getGhichu() {
        return ghichu;
    }

    public Thanhvien741() {
    }

    public Thanhvien741(int id, String username, String password, String hoten, String ngaysinh, String dt, String ghichu) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.hoten = hoten;
        this.ngaysinh = ngaysinh;
        this.dt = dt;
        this.ghichu = ghichu;
    }

    private String ngaysinh;
    private String dt;
    private String ghichu;

}
