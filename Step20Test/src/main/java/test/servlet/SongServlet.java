package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/When White Snow Falls")
public class SongServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String latestSong = "하얀 눈이 내리면";
		
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
		pw.println("<title>안예슬 노래</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<p>최신 곡 : <strong>"+latestSong+"</strong></p>");
		pw.println("<ul><li><a href=https://www.youtube.com/watch?v=e5HdIh6yBKY>Youtube link</a></li></ul>");
		pw.println("<ul><li><a href=https://www.melon.com/song/lyrics.htm?songId=38380316&ref=W10600>Melon link</a></li></ul>");
		pw.println("<ul><li><a href=https://vod.sooplive.co.kr/player/146323297>Soop link</a></li></ul>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
