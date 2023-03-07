package com.vet.clinic.util;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class Email {

	private static String emailAddr = "miseonzz@outlook.com";
	private static String name = "miseon";
	private static String passwd = "altjs113";
	
	private static String hostName = "smtp.office365.com";
	private static int port = 587;
	
	public static void simpleMail(String email, String toName, String title, String msg) throws EmailException {
		SimpleEmail mail = new SimpleEmail();
		
		// 메일정보담기
		mail.setCharset("UTF-8");
		mail.setDebug(true);
		mail.setHostName(hostName);		// 보내는 서버 설정 : 고정(위의 설정 내용 그대로 받아야함)
		mail.setAuthentication(emailAddr, passwd); // 보내는사람 인증 : 고정
		mail.setSmtpPort(port);			// 사용할 port번호 : 고정
		mail.setStartTLSEnabled(true); // 암호화방법 : 보안 사용할거니? : 고정
		mail.setFrom(emailAddr, name);	// (보내는사람 email, 보내는사람 name) : 고정. 밑줄 > throws EmailException.
		
		// 메일내용은 아래에
		mail.addTo(email);		// 받는사람메일
		mail.setSubject(title);	// 제목
		mail.setMsg(msg);		// 내용
		
		// 전송하기
		mail.send(); 	// 끝
		
	}
}
