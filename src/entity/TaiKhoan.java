package entity;

public class TaiKhoan {
	private int id ;
	private String taiKhoan,matKhau,ngayTao,isNhanVien;
	public TaiKhoan() {
		
	}
	public TaiKhoan(int id, String taiKhoan, String matKhau, String ngayTao, String isNhanVien) {
		super();
		this.id = id;
		this.taiKhoan = taiKhoan;
		this.matKhau = matKhau;
		this.ngayTao = ngayTao;
		this.isNhanVien = isNhanVien;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTaiKhoan() {
		return taiKhoan;
	}
	public void setTaiKhoan(String taiKhoan) {
		this.taiKhoan = taiKhoan;
	}
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	public String getNgayTao() {
		return ngayTao;
	}
	public void setNgayTao(String ngayTao) {
		this.ngayTao = ngayTao;
	}
	public String getIsNhanVien() {
		return isNhanVien;
	}
	public void setIsNhanVien(String isNhanVien) {
		this.isNhanVien = isNhanVien;
	}
	
	public boolean checkTaiKhoan(String taiKhoan, String matKhau) {
		return false;
		
	}
	@Override
	public String toString() {
		return "TaiKhoan [id=" + id + ", taiKhoan=" + taiKhoan + ", matKhau=" + matKhau + ", ngayTao=" + ngayTao
				+ ", isNhanVien=" + isNhanVien + "]";
	}
	
}
