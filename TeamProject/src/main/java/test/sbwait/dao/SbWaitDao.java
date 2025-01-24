package test.sbwait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.sbwait.dto.SbWaitDto;
import test.util.DbcpBean;

public class SbWaitDao {

    public boolean insert(SbWaitDto dto) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int rowCount = 0;
        try {
            conn = new DbcpBean().getConn();
            String sql = """
                INSERT INTO test_sb_wait
                (comid, storenum, empno, ename, role, ecall, epwd, sal, hsal, worktime, email, hiredate, contract)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            """;
            pstmt = conn.prepareStatement(sql);
            // ? 의 값을 여기서 바인딩한다
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
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (rowCount > 0) {
			return true;
		} else {
			return false;
		}
    }

    public List<SbWaitDto> getAdminList() {
        List<SbWaitDto> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = new DbcpBean().getConn();
            String sql = """
                SELECT comid, storenum, empno, ename, role, ecall, epwd, sal, hsal, worktime, email, hiredate, contract
                FROM test_sb_wait
                WHERE role = 'ADMIN'
                ORDER BY empno ASC
            """;
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                SbWaitDto dto = new SbWaitDto();
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
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }
    
    public List<SbWaitDto> getStaffList() {
        List<SbWaitDto> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = new DbcpBean().getConn();
            String sql = """
                SELECT comid, storenum, empno, ename, role, ecall, epwd, sal, hsal, worktime, email, hiredate, contract
                FROM test_sb_wait
                WHERE role = 'STAFF'
                ORDER BY empno ASC
            """;
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                SbWaitDto dto = new SbWaitDto();
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
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public boolean delete(int empno) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int rowCount = 0;
        try {
            conn = new DbcpBean().getConn();
            String sql = """
                DELETE FROM test_sb_wait
                WHERE empno = ?
            """;
            pstmt = conn.prepareStatement(sql);
            rowCount = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (rowCount > 0) {
			return true;
		} else {
			return false;
		}
    }
}
