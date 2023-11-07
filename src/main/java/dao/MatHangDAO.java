package dao;

import entity.MatHang741;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MatHangDAO extends DatabaseConnector{
    public MatHangDAO(Connection connection) throws ClassNotFoundException, SQLException{
        super();
        DatabaseConnector.connection  = getConnection();
    }
    public ArrayList<MatHang741> getNhapHang(int idLanNhap){
        ArrayList<MatHang741> kq = new ArrayList<>();
        String query;
        PreparedStatement pst;
        ResultSet rs;
        try{
            query = "select * from qlst.tblmathang where id_lannhap = ?;";
            pst = connection.prepareStatement(query);
            pst.setInt(1,idLanNhap);
            rs = pst.executeQuery();
            while(rs.next()){
                MatHang741 matHang741 = new MatHang741();
                matHang741.setId(rs.getInt("id"));
                matHang741.setLoaiHang(rs.getString("loaihang"));
                matHang741.setTen(rs.getString("ten"));
                matHang741.setGhiChu(rs.getString("ghiChu"));
                matHang741.setDonGia(rs.getDouble("donGia"));
                matHang741.setSoLuong(rs.getInt("soLuong"));

                kq.add(matHang741);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return kq;
    }

    public ArrayList<MatHang741> timKiemTheoTen(String key){
        ArrayList<MatHang741> kq = new ArrayList<>();
        String query;
        PreparedStatement pst;
        ResultSet rs;
        try {
            query = "select * from qlst.tblmathang where ten like ?;";
            pst = connection.prepareStatement(query);
            pst.setString(1,"%"+key+"%");
            rs = pst.executeQuery();
            while(rs.next()){
                MatHang741 matHang741 = new MatHang741();
                matHang741.setId(rs.getInt("id"));
                matHang741.setLoaiHang(rs.getString("loaihang"));
                matHang741.setTen(rs.getString("ten"));
                matHang741.setGhiChu(rs.getString("ghiChu"));
                matHang741.setDonGia(rs.getDouble("donGia"));
                matHang741.setSoLuong(rs.getInt("soLuong"));

                kq.add(matHang741);
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return kq;
    }

    public MatHang741 getMatHang(int id){
        MatHang741 kq = new MatHang741();
        String query;
        PreparedStatement pst;
        ResultSet rs;
        try {
            query = "select * from qlst.tblmathang where id = ?;";
            pst = connection.prepareStatement(query);
            pst.setInt(1,id);
            rs = pst.executeQuery();
            while(rs.next()){
                MatHang741 matHang741 = new MatHang741();
                matHang741.setId(rs.getInt("id"));
                matHang741.setLoaiHang(rs.getString("loaihang"));
                matHang741.setTen(rs.getString("ten"));
                matHang741.setGhiChu(rs.getString("ghiChu"));
                matHang741.setDonGia(rs.getDouble("donGia"));
                matHang741.setSoLuong(rs.getInt("soLuong"));

                kq = matHang741;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return kq;
    }
}
