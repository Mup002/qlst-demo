package dao;

import entity.LanNhapHang741;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TKLanNhapHangDAO extends DatabaseConnector{
    public TKLanNhapHangDAO(Connection connection) throws ClassNotFoundException , SQLException{
        super();
        DatabaseConnector.connection = getConnection();
    }
    public ArrayList<LanNhapHang741> getTKLanNhapHang(int idNCC){
        ArrayList<LanNhapHang741> kq = new ArrayList<>();
        String query;
        PreparedStatement pst;
        ResultSet rs;
        try{
            query = "select * from qlst.tblCacLanNhapHang where id_ncc = ?";
            pst = connection.prepareStatement(query);
            pst.setInt(1,idNCC);
            rs = pst.executeQuery();
            while (rs.next()){
                LanNhapHang741 LanNhapHang741 = new LanNhapHang741();
                LanNhapHang741.setId(rs.getInt("id"));
                LanNhapHang741.setGhichu(rs.getString("ghichu"));
                LanNhapHang741.setNgaynhap(rs.getDate("ngayNhap"));
                LanNhapHang741.setTongtien(rs.getDouble("tongTien"));

                kq.add(LanNhapHang741);
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return kq;
    }
}
