package entity;

public class MatHang741 {
    private int id;
    private int soLuong;
    private double donGia;
    private String ten;

    public MatHang741() {
    }

    public MatHang741(int id, int soLuong, double donGia, String ten, String loaiHang, String ghiChu) {
        this.id = id;
        this.soLuong = soLuong;
        this.donGia = donGia;
        this.ten = ten;
        this.loaiHang = loaiHang;
        this.ghiChu = ghiChu;
    }

    private String loaiHang;
    private String ghiChu;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public double getDonGia() {
        return donGia;
    }

    public void setDonGia(double donGia) {
        this.donGia = donGia;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getLoaiHang() {
        return loaiHang;
    }

    public void setLoaiHang(String loaiHang) {
        this.loaiHang = loaiHang;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }
}
