package com.kosmo.soribook;

import java.util.Arrays;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;

@Component
public class SessionManger {

	public static final String SESSION_COOKIE_NAME= "mySessionId";
	
	//동시성 문제를 해결해주기 위한 ConcurrentHashMap
	private Map<String, Object> sessionStore = new ConcurrentHashMap<>();
	
//      세션 생성
//      1. SessionId 생성 (임의의 추정 불가능한 랜덤 값)
//      2. 세션 저장소에 SessionId 와 보관할 값 저장
//      3. SessionId 로 응답 쿠키를 생성해서 클라이언트에 전달
	
	public void createSession(Object value, HttpServletResponse response) {
		
		// SessionId 생성, 값을 세션에 저장
		String sessionId = UUID.randomUUID().toString(); //UUID를 이용해서 sessionId 생성
		sessionStore.put(sessionId, value); // 세션 저장소에 sessionId와 보관할 값 저장
		
		//쿠키생성 : 쿠키 이름은 SESSION_COOKIE_NAME , 값은 SessionId
		Cookie 	mySessionCookie = new Cookie(SESSION_COOKIE_NAME, sessionId);
		response.addCookie(mySessionCookie);

	}
    
	/* 세션 조회 방법 2 : findCookie 를 따로 생성해서 해당 메서드를 사용해 쿠키값을 찾아옴 */
	public Object getSession(HttpServletRequest request) {
		// SessionCookie 에 findCookie 를 메서드를 사용해서 찾아온 SESSION_COOKIE_NAME 를 저장함
		Cookie Sessioncookie = findCookie(request, SESSION_COOKIE_NAME);
		if(Sessioncookie == null) {
			return null;
		}
		return sessionStore.get(Sessioncookie.getValue());
	}
	
	public Cookie findCookie(HttpServletRequest request, String cookieName) {
		Cookie[] cookies = request.getCookies();
		
		if(cookies == null) {
			return null;
		}
		return Arrays.stream(cookies) // arrays 를 스트림으로 변경
				.filter(cookie -> cookie.getName().equals(cookieName))
				/*
                findfirst 와 findAny 둘중 하나를 쓸 수 있는데
                1. findAny : 순서 상관X! 빨리 나오면 꺼내옴
                2. findfrist : 순서 중요! 순서에 따라서 돌다가 맞으면 꺼내옴
                 */
				.findAny()
				.orElse(null);
	}
	
    /*
    * 3. 세션 만료 : Session 만료는 그냥 지워버리면 된다
    */
	public void expireCookie(HttpServletRequest request) {
		Cookie sessionCookie = findCookie(request, SESSION_COOKIE_NAME);
		
        // findCookie 로 세션을 가져와서 해당 값이 null 이 아니면 세션 스토어에 저장, 매핑된 값을 삭제!
		if(sessionCookie != null) {
			sessionStore.remove(sessionCookie.getValue());
		}
		
	}
	
	
	
}
