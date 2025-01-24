package test.sbemp.dto;

public class SbEmpDto {
    private int comid;           
    private int storenum;        
    private int empno;           
    private String ename;        
    private String role;         
    private String ecall;       
    private String epwd;     
    private int sal;         
    private int hsal;          
    private int worktime;       
    private String email;       
    private String hiredate;      
    private String contract;     

    // 기본 생성자
    public SbEmpDto() {}

    // 모든 필드를 초기화하는 생성자
    public SbEmpDto(int comid, int storenum, int empno, String ename, String role, String ecall, 
                    String epwd, int sal, int hsal, int worktime, String email, String hiredate, String contract) {
        this.comid = comid;
        this.storenum = storenum;
        this.empno = empno;
        this.ename = ename;
        this.role = role;
        this.ecall = ecall;
        this.epwd = epwd;
        this.sal = sal;
        this.hsal = hsal;
        this.worktime = worktime;
        this.email = email;
        this.hiredate = hiredate;
        this.contract = contract;
    }

    // Getters and Setters
    public int getComid() {
        return comid;
    }

    public void setComid(int comid) {
        this.comid = comid;
    }

    public int getStorenum() {
        return storenum;
    }

    public void setStorenum(int storenum) {
        this.storenum = storenum;
    }

    public int getEmpno() {
        return empno;
    }

    public void setEmpno(int empno) {
        this.empno = empno;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
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

    public int getSal() {
        return sal;
    }

    public void setSal(int sal) {
        this.sal = sal;
    }

    public int getHsal() {
        return hsal;
    }

    public void setHsal(int hsal) {
        this.hsal = hsal;
    }

    public int getWorktime() {
        return worktime;
    }

    public void setWorktime(int worktime) {
        this.worktime = worktime;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHiredate() {
        return hiredate;
    }

    public void setHiredate(String hiredate) {
        this.hiredate = hiredate;
    }

    public String getContract() {
        return contract;
    }

    public void setContract(String contract) {
        this.contract = contract;
    }
}
