package entity;

import java.util.Date;

public class LanNhapHang741 {
    private int id;
    private Date ngaynhap;
    private String ghichu;
    private double tongtien;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getNgaynhap() {
        return ngaynhap;
    }

    public void setNgaynhap(Date ngaynhap) {
        this.ngaynhap = ngaynhap;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    public double getTongtien() {
        return tongtien;
    }

    public LanNhapHang741(int id, Date ngaynhap, String ghichu, double tongtien) {
        this.id = id;
        this.ngaynhap = ngaynhap;
        this.ghichu = ghichu;
        this.tongtien = tongtien;
    }

    public LanNhapHang741() {
    }

    public void setTongtien(double tongtien) {
        this.tongtien = tongtien;
    }
}
