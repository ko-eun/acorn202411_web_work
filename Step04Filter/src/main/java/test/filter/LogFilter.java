package test.filter;

import java.io.IOException;
import java.time.LocalDateTime;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;


/*
 *  [ 필터 만드는 법 ]
 *  
 *  1. jakarta.servlet.Filter 인터페이스를 구현
 *  2. 추상메소드 재정의
 *  3. @WebFilter 어노테이션을 이용해서 요청 맵핑하기
 */

@WebFilter("/*") // "/*"이 프로젝트(컨텍스트)에 오는 모든 요청에 대해서 필터가 작동되게 한다.
public class LogFilter implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Log 필터 수행됨!");
	
		// 부모 type 객체를 원래 type(자식) 으로 casting
		HttpServletRequest request = (HttpServletRequest)req;
		String uri = request.getRequestURI();
		System.out.println("요청 uri : " +uri);
		
		String clientIP = request.getRemoteAddr();
		System.out.println("client ip+" +clientIP);
		
		System.out.println("시간 : "+LocalDateTime.now());
		
		// 요청의 흐름 계속 이어가기 
		chain.doFilter(req, resp);
		
	}

}
