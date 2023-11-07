package entity;

public class NCC741 extends Thanhvien741{
    private int id;
    private String ten;
    private double doanhthu;
    private String ghichu;
    private int soLanNhapHang;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public Double getDoanhthu() {
        return doanhthu;
    }

    public void setDoanhthu(Double doanhthu) {
        this.doanhthu = doanhthu;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    public int getSoLanNhapHang() {
        return soLanNhapHang;
    }

    public void setSoLanNhapHang(int soLanNhapHang) {
        this.soLanNhapHang = soLanNhapHang;
    }

    public NCC741() {
    }

    public NCC741(int id, String ten, double doanhthu, String ghichu, int soLanNhapHang) {
        this.id = id;
        this.ten = ten;
        this.doanhthu = doanhthu;
        this.ghichu = ghichu;
        this.soLanNhapHang = soLanNhapHang;
    }


}
