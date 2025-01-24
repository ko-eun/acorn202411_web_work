package test.sbemp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.sbemp.dto.SbEmpDto;
import test.util.DbcpBean;

public class SbEmpDao {
    
    public boolean insert(SbEmpDto dto) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int rowCount = 0;
        try {
            conn = new DbcpBean().getConn();
            String sql = """
                INSERT INTO test_sb_emp
                (comid, storenum, empno, ename, role, ecall, epwd, sal, hsal, worktime, email, hiredate, contract)
                VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            """;
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, dto.getComid());
            pstmt.setInt(2, dto.getStorenum());
            pstmt.setInt(3, dto.getEmpno());
            pstmt.setString(4, dto.getEname());
            pstmt.setString(5, dto.getRole());
            pstmt.setString(6, dto.getEcall());
            pstmt.setString(7, dto.getEpwd());
            pstmt.setInt(8, dto.getSal());
            pstmt.setInt(9, dto.getHsal());
            pstmt.setInt(10, dto.getWorktime());
            pstmt.setString(11, dto.getEmail());
            pstmt.setString(12, dto.getHiredate());
            pstmt.setString(13, dto.getContract());
            rowCount = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {}
        }
        if (rowCount > 0) {
			return true;
		} else {
			return false;
		}
    }
    
    public SbEmpDto getData(int empno) {
        SbEmpDto dto = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = new DbcpBean().getConn();
            String sql = """
                SELECT comid, storenum, empno, ename, role, ecall, epwd, sal, hsal, worktime, email, hiredate, contract
                FROM test_sb_emp
                WHERE empno = ?
            """;
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, empno);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                dto = new SbEmpDto();
                dto.setComid(rs.getInt("comid"));
                dto.setStorenum(rs.getInt("storenum"));
                dto.setEmpno(rs.getInt("empno"));
                dto.setEname(rs.getString("ename"));
                dto.setRole(rs.getString("role"));
                dto.setEcall(rs.getString("ecall"));
                dto.setEpwd(rs.getString("epwd"));
                dto.setSal(rs.getInt("sal"));
                dto.setHsal(rs.getInt("hsal"));
                dto.setWorktime(rs.getInt("worktime"));
                dto.setEmail(rs.getString("email"));
                dto.setHiredate(rs.getString("hiredate"));
                dto.setContract(rs.getString("contract"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {}
        }
        return dto;
    }

    public boolean update(SbEmpDto dto) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int rowCount = 0;
        try {
            conn = new DbcpBean().getConn();
            String sql = """
                UPDATE test_sb_emp
                SET ename = ?, ecall = ?, epwd = ?, sal = ?, hsal = ?, worktime = ?, email = ?, contract = ?
                WHERE empno = ?
            """;
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getEname());
            pstmt.setString(2, dto.getEcall());
            pstmt.setString(3, dto.getEpwd());
            pstmt.setInt(4, dto.getSal());
            pstmt.setInt(5, dto.getHsal());
            pstmt.setInt(6, dto.getWorktime());
            pstmt.setString(7, dto.getEmail());
            pstmt.setString(18, dto.getContract());
            pstmt.setInt(9, dto.getEmpno());
            rowCount = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {}
        }
        if (rowCount > 0) {
			return true;
		} else {
			return false;
		}
    }

    public boolean delete(int empno) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int rowCount = 0;
        try {
            conn = new DbcpBean().getConn();
            String sql = """
                DELETE FROM test_sb_emp
                WHERE empno = ?
            """;
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, empno);
            rowCount = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {}
        }
        if (rowCount > 0) {
			return true;
		} else {
			return false;
		}
    }

    public List<SbEmpDto> getList() {
        List<SbEmpDto> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = new DbcpBean().getConn();
            String sql = """
                SELECT comid, storenum, empno, ename, role, ecall, epwd, sal, hsal, worktime, email, hiredate, contract
                FROM test_sb_emp
                ORDER BY empno ASC
            """;
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                SbEmpDto dto = new SbEmpDto();
                dto.setComid(rs.getInt("comid"));
                dto.setStorenum(rs.getInt("storenum"));
                dto.setEmpno(rs.getInt("empno"));
                dto.setEname(rs.getString("ename"));
                dto.setRole(rs.getString("role"));
                dto.setEcall(rs.getString("ecall"));
                dto.setEpwd(rs.getString("epwd"));
                dto.setSal(rs.getInt("sal"));
                dto.setHsal(rs.getInt("hsal"));
                dto.setWorktime(rs.getInt("worktime"));
                dto.setEmail(rs.getString("email"));
                dto.setHiredate(rs.getString("hiredate"));
                dto.setContract(rs.getString("contract"));
                list.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {}
        }
        return list;
    }

    public List<SbEmpDto> getAdminList() {
        List<SbEmpDto> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = new DbcpBean().getConn();
            String sql = """
                SELECT comid, storenum, empno, ename, role, ecall, epwd, sal, hsal, worktime, email, hiredate, contract
                FROM test_sb_emp
                WHERE role = 'ADMIN'
                ORDER BY empno ASC
            """;
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                SbEmpDto dto = new SbEmpDto();
                dto.setComid(rs.getInt("comid"));
                dto.setStorenum(rs.getInt("storenum"));
                dto.setEmpno(rs.getInt("empno"));
                dto.setEname(rs.getString("ename"));
                dto.setRole(rs.getString("role"));
                dto.setEcall(rs.getString("ecall"));
                dto.setEpwd(rs.getString("epwd"));
                dto.setSal(rs.getInt("sal"));
                dto.setHsal(rs.getInt("hsal"));
                dto.setWorktime(rs.getInt("worktime"));
                dto.setEmail(rs.getString("email"));
                dto.setHiredate(rs.getString("hiredate"));
                dto.setContract(rs.getString("contract"));
                list.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {}
        }
        return list;
    }

    public List<SbEmpDto> getStoreNumList(int storenum) {
        List<SbEmpDto> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = new DbcpBean().getConn();
            String sql = """
                SELECT comid, storenum, empno, ename, role, ecall, epwd, sal, hsal, worktime, email, hiredate, contract
                FROM test_sb_emp
                WHERE storenum = ?
                ORDER BY empno ASC
            """;
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, storenum);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                SbEmpDto dto = new SbEmpDto();
                dto.setComid(rs.getInt("comid"));
                dto.setStorenum(rs.getInt("storenum"));
                dto.setEmpno(rs.getInt("empno"));
                dto.setEname(rs.getString("ename"));
                dto.setRole(rs.getString("role"));
                dto.setEcall(rs.getString("ecall"));
                dto.setEpwd(rs.getString("epwd"));
                dto.setSal(rs.getInt("sal"));
                dto.setHsal(rs.getInt("hsal"));
                dto.setWorktime(rs.getInt("worktime"));
                dto.setEmail(rs.getString("email"));
                dto.setHiredate(rs.getString("hiredate"));
                dto.setContract(rs.getString("contract"));
                list.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {}
        }
        return list;
    }

    public List<SbEmpDto> getStaffList() {
        List<SbEmpDto> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = new DbcpBean().getConn();
            String sql = """
                SELECT comid, storenum, empno, ename, role, ecall, epwd, sal, hsal, worktime, email, hiredate, contract
                FROM test_sb_emp
                WHERE role = 'STAFF'
                ORDER BY empno ASC
            """;
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                SbEmpDto dto = new SbEmpDto();
                dto.setComid(rs.getInt("comid"));
                dto.setStorenum(rs.getInt("storenum"));
                dto.setEmpno(rs.getInt("empno"));
                dto.setEname(rs.getString("ename"));
                dto.setRole(rs.getString("role"));
                dto.setEcall(rs.getString("ecall"));
                dto.setEpwd(rs.getString("epwd"));
                dto.setSal(rs.getInt("sal"));
                dto.setHsal(rs.getInt("hsal"));
                dto.setWorktime(rs.getInt("worktime"));
                dto.setEmail(rs.getString("email"));
                dto.setHiredate(rs.getString("hiredate"));
                dto.setContract(rs.getString("contract"));
                list.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {}
        }
        return list;
    }
}
