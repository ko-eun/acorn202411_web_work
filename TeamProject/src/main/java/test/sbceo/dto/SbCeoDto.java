package test.sbceo.dto;

public class SbCeoDto {
	 private int comId; 
	 private int empNo; 
	 private String ename;  
	 private String role;   
	 private String ecall; 
	 private String epwd; 

	 public SbCeoDto() {}

	public SbCeoDto(int comId, int empNo, String ename, String role, String ecall, String epwd) {
		super();
		this.comId = comId;
		this.empNo = empNo;
		this.ename = ename;
		this.role = role;
		this.ecall = ecall;
		this.epwd = epwd;
	}

	public int getComId() {
		return comId;
	}

	public void setComId(int comId) {
		this.comId = comId;
	}

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}

	public String getEname() {
		return ename;
	}

	public void seteName(String ename) {
		this.ename = ename;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getEcall() {
		return ecall;
	}

	public void setEcall(String ecall) {
		this.ecall = ecall;
	}

	public String getEpwd() {
		return epwd;
	}

	public void setEpwd(String epwd) {
		this.epwd = epwd;
	}
	 
	 
}
