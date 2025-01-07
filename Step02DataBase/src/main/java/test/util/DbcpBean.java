package test.util;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
/*
 *  Data Base Connection Pool 의 약자 = Dbcp
 *  
 *  Bean => Java 객체를 콩이라고 부르기도 한다.
 */
public class DbcpBean {
	
	// Connection 객체를 리턴해주는 메소드
	public Connection getConn() {
		Connection conn = null;
		try {
			// Tomcat 서버가 관리하는 Connection 객체를 하나 얻어와서 필드에 저장하는 작업하기
			Context initContext = new InitialContext();
			// Servers/context.xml 문서에 설정된 jdvc/myoracle 이라는 이름의 datasource 를 얻어온다.
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			// 얻어온 datasource 객체를 이용해서 Connection 객체의 참조값을 얻어와서 지역변수에 저장
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
		    conn = ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
		
	}
}
