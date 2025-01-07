package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/friends")
public class FriendsServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// DB 에서 읽어온 친구 목록이라고 가정하자
		List<String> names = new ArrayList<>();
		names.add("김구라");
		names.add("해골");
		names.add("원숭이");
		
		// names 객체에 들어있는 친구 목록을 ul, li 요소를 이용해서 출력해보세요.
		// 응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		// 응답 컨텐트 설정
		resp.setContentType("text/html; charset=utf-8");

		// 요청을 한 클라이언트에게 문자열을 출력할 수 있는 객체
		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title>친구 목록</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<h1>친구 목록1</h1>");
			for(String tmp:names) {
				pw.println("<ul><li>"+tmp+"</li></ul>");
			}
			
		pw.println("<h1>친구 목록2</h1>");
			pw.println("<ul>");
				pw.println("<li>"+names.get(0)+"</li>");
				pw.println("<li>"+names.get(1)+"</li>");
				pw.println("<li>"+names.get(2)+"</li>");
			pw.println("</ul>");
			
		pw.println("<h1>친구 목록2</h1>");
			pw.println("<ul>");
				for(int i =0; i<names.size(); i++) {
					pw.println("<li>"+names.get(i)+"</li>");
				}
			pw.println("</ul>");
			
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
		
	}
}
