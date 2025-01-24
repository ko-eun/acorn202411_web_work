package test.sbceo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import test.sbceo.dto.SbCeoDto;
import test.util.DbcpBean;

public class SbCeoDao {

    public SbCeoDto getData(int empNo) {
        SbCeoDto dto = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = new DbcpBean().getConn();
            String sql = """
                SELECT comid, empno, ename, role, ecall, epwd
                FROM test_sb_ceo
                WHERE empno = ?
            """;
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, empNo);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                dto = new SbCeoDto();
                dto.setComId(rs.getInt("comid"));
                dto.setEmpNo(rs.getInt("empno"));
                dto.seteName(rs.getString("ename"));
                dto.setRole(rs.getString("role"));
                dto.setEcall(rs.getString("ecall"));
                dto.setEpwd(rs.getString("epwd"));
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

        return dto;
    }

    public boolean update(SbCeoDto dto) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int rowCount = 0;

        try {
            conn = new DbcpBean().getConn();
            String sql = """
                UPDATE test_sb_ceo
                SET ename = ?, ecall = ?, epwd = ?
                WHERE empno = ?
            """;
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getEname());
            pstmt.setString(2, dto.getEcall());
            pstmt.setString(3, dto.getEpwd());
            pstmt.setInt(4, dto.getEmpNo());
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
