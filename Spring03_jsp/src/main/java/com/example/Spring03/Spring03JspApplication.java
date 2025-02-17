package com.example.Spring03;

import java.io.IOException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;

import com.example.Spring03.dto.MemberDto;

@SpringBootApplication
public class Spring03JspApplication {

	public static void main(String[] args) {
		SpringApplication.run(Spring03JspApplication.class, args);
		
		MemberDto dto = MemberDto.builder().num(1).name("김구라").addr("노량진").build();
	}
	
	 //서버가 준비 되었을때 실행할 메소드 설정
	   @EventListener(ApplicationReadyEvent.class)
	   public void openChrome() {
	      String url="http://localhost:9000/spring03/";
	      // 운영체제의 얻어와서 이름을 소문자로 
	      String os=System.getProperty("os.name").toLowerCase();
	      ProcessBuilder builder=null;
	      try {
	         if(os.contains("win")) {
	            builder=new ProcessBuilder("cmd.exe", "/c", "start chrome "+url);
	         }else if(os.contains("mac")) {
	            builder=new ProcessBuilder("/usr/bin/open", "-a", "Google Chrome", url);
	         }else {
	            System.out.println("지원 하지 않는 운영체제 입니다.");
	            return;
	         }
	         builder.start();
	      }catch(IOException e) {
	         e.printStackTrace();
	      }
	   }

}
