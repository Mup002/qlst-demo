package dao;

import entity.NCC741;

import java.sql.*;
import java.util.ArrayList;

public class TKNCCDAO extends DatabaseConnector{


    public TKNCCDAO(Connection connection) throws ClassNotFoundException, SQLException {
        super();
        DatabaseConnector.connection = getConnection();
    }
    public ArrayList<NCC741> getTKNCC(String startDate, String endDate){
        ArrayList<NCC741> kq = new ArrayList<>();
        String query;
        PreparedStatement pst;
        ResultSet rs;
        try {
            if(startDate != null && endDate != null){
                query = "SELECT * FROM qlst.tblncc WHERE id IN (SELECT id_ncc FROM qlst.tblCacLanNhapHang WHERE ngayNhap BETWEEN ? AND ?)";
                pst =  connection.prepareStatement(query);
                pst.setString(1,startDate);
                pst.setString(2,endDate);
                rs = pst.executeQuery();
            }else{
                query = "SELECT * FROM qlst.tblncc";
                pst =  connection.prepareStatement(query);
                rs = pst.executeQuery();
            }
            while (rs.next()){
                NCC741 ncc741 = new NCC741();
                ncc741.setId(rs.getInt("id"));
                ncc741.setTen(rs.getString("ten"));
                ncc741.setSoLanNhapHang(rs.getInt("soLanNhapHang"));
                ncc741.setDoanhthu(rs.getDouble("doanhthu"));

                kq.add(ncc741);
            }
        }catch (SQLException e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return kq;
    }
}
