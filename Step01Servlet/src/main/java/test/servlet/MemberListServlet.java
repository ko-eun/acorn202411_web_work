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
import test.dto.MemberDto;

@WebServlet("/member/list")
public class MemberListServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<MemberDto> list = new ArrayList<>();
		list.add(new MemberDto(1, "김구라", "노량진"));
		list.add(new MemberDto(2, "해골", "행신동"));
		list.add(new MemberDto(3, "원숭이", "동물원"));
		
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
		pw.println("<title></title>");
		pw.println("</head>");
		pw.println("<body>");
			pw.println("<div class=\"container\">");
				pw.println("<table>");
					pw.println("<thead>");
						pw.println("<tr>");
							pw.println("<th>번호</th>");
							pw.println("<th>이름</th>");
							pw.println("<th>주소</th>");
						pw.println("</tr>");
					pw.println("</thead>");
					pw.println("<tbody>");
						for(MemberDto tmp:list) {
							pw.println("<tr>");
								pw.println("<td>"+tmp.getNum()+"</td>");
								pw.println("<td>"+tmp.getName()+"</td>");
								pw.println("<td>"+tmp.getAddr()+"</td>");
							pw.println("</tr>");
						}
				pw.println("</tbody>");
				pw.println("</table>");
			pw.println("</div>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
