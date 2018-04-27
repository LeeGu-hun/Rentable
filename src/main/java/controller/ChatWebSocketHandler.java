package controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import bean.bean_rent_users;



public class ChatWebSocketHandler extends TextWebSocketHandler {
	private static Logger logger = LoggerFactory.getLogger(ChatWebSocketHandler.class);
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		// TODO Auto-generated method stub
		super.afterConnectionClosed(session, status);
		sessionList.remove(session);
		logger.info("{} 연결 끊김", session.getId());
	}

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessionList.add(session);
		System.out.println("연결됨 밑에 로거 시작");
		logger.info("{} 연결됨", session.getId());
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		// TODO Auto-generated method stub
		super.handleTextMessage(session, message);

		Map<String, Object> map = session.getAttributes();
		bean_rent_users user = (bean_rent_users) map.get("userInfo");
		System.out.println("로그인 한 아이디 : " + user.getR_name());

		logger.info("{} 로 부터 {} 받음", session.getId(), message.getPayload());
		for (WebSocketSession sess : sessionList) {
			sess.sendMessage(new TextMessage(message.getPayload()));
		}
		System.out.println(message.getPayload());
	}

}
