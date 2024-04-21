package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import connectDB.ConnectDB;
import entity.KhachHang;

public class KhachHang_DAO {
	public ArrayList<KhachHang> getAllKhachHang() {
		ArrayList<KhachHang> dskh = new ArrayList<KhachHang>();
		try {
			ConnectDB.getIntance();
			Connection con = ConnectDB.getConnection();
			String sql = "select * from KhachHang";
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next()) {
				String maKH = rs.getString("maKhachHang");
				Integer hasTTV = rs.getInt("hasTheThanhVien");
				String tenKH = rs.getString("tenKhachHang");
				Integer tuoi = rs.getInt("tuoi");
				String soDT = rs.getString("soDienThoai");
				KhachHang kh = new KhachHang(maKH, tenKH, soDT, tuoi, hasTTV == 1 ? true : false);
				dskh.add(kh);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dskh;
	}
}
