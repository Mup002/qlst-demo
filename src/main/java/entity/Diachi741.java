package entity;

public class Diachi741 {
    private int id;
    private String sonha;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Diachi741() {
    }

    public Diachi741(int id, String sonha, String toanha, String quanhuyen, String tinhthanh) {
        this.id = id;
        this.sonha = sonha;
        this.toanha = toanha;
        this.quanhuyen = quanhuyen;
        this.tinhthanh = tinhthanh;
    }

    public String getSonha() {
        return sonha;
    }

    public void setSonha(String sonha) {
        this.sonha = sonha;
    }

    public String getToanha() {
        return toanha;
    }

    public void setToanha(String toanha) {
        this.toanha = toanha;
    }

    public String getQuanhuyen() {
        return quanhuyen;
    }

    public void setQuanhuyen(String quanhuyen) {
        this.quanhuyen = quanhuyen;
    }

    public String getTinhthanh() {
        return tinhthanh;
    }

    public void setTinhthanh(String tinhthanh) {
        this.tinhthanh = tinhthanh;
    }

    private String toanha;
    private String quanhuyen;
    private String tinhthanh;

}
