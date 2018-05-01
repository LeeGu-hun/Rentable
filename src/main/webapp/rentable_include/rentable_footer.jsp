<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function message() {
		var sock;
		sock = new SockJS("<c:url value="/socket"/>");
		sock.onmessage = onMessage;
		sock.onclose = onClose;

		function onClose(evt) {
			$("#data").append("연결 끊김");
		}

		var INDEX = 0;
		$("#chat-submit").click(function(e) {
			e.preventDefault();
			var msg = $("#chat-input").val();
			if (msg.trim() == '') {
				return false;
			}
			sendMessage();
			onMessage();
			var buttons = [ {
				name : 'Existing User',
				value : 'existing'
			}, {
				name : 'New User',
				value : 'new'
			} ];
		})

		function sendMessage() {
			sock.send($("#chat-input").val());

		}

		function onMessage(evt) {
			var msg = evt.data;
			var sessionuser = '${sessionScope.userInfo.r_name}';
			var loguser = msg.split(':')[0].trim();
			if (loguser == sessionuser) {
				generate_message(msg, 'self');
			} else {
				generate_message(msg, 'user');
			}
			//sock.close();
		}

		function generate_message(msg, type) {
			INDEX++;
			var str = "";
			str += "<div id='cm-msg-" + INDEX + "' class=\"chat-msg " + type
				+ "\">";
			str += "          <span class=\"msg-avatar\">";
			str += "            <img src=\"https:\/\/image.crisp.im\/avatar\/operator\/196af8cc-f6ad-4ef7-afd1-c45d5231387c\/240\/?1483361727745\">";
			str += "          <\/span>";
			str += "          <div class=\"cm-msg-text\">";
			str += msg;
			str += "          <\/div>";
			str += "        <\/div>";
			$(".chat-logs").append(str);
			$("#cm-msg-" + INDEX).hide().fadeIn(300);
			if (type == 'self') {
				$("#chat-input").val('');
			}
			$(".chat-logs").stop().animate({
				scrollTop : $(".chat-logs")[0].scrollHeight
			}, 1000);
		}

		function generate_button_message(msg, buttons) {
			/*
			 * Buttons should be object array [ { name: 'Existing User', value:
			 * 'existing' }, { name: 'New User', value: 'new' } ]
			 */
			var data = evt.data;
			INDEX++;
			var btn_obj = buttons
					.map(
							function(button) {
								return "              <li class=\"button\"><a href=\"javascript:;\" class=\"btn btn-primary chat-btn\" chat-value=\""
									+ button.value
									+ "\">"
										+ button.name + "<\/a><\/li>";
							}).join('');
			var str = "";
			str += "<div id='cm-msg-" + INDEX + "' class=\"chat-msg user\">";
			str += "          <span class=\"msg-avatar\">";
			str += "            <img src=\"https:\/\/image.crisp.im\/avatar\/operator\/196af8cc-f6ad-4ef7-afd1-c45d5231387c\/240\/?1483361727745\">";
			str += "          <\/span>";
			str += "          <div class=\"cm-msg-text\">";
			str += data;
			str += "          <\/div>";
			str += "          <div class=\"cm-msg-button\">";
			str += "            <ul>";
			str += btn_obj;
			str += "            <\/ul>";
			str += "          <\/div>";
			str += "        <\/div>";
			$(".chat-logs").append(str);
			$("#cm-msg-" + INDEX).hide().fadeIn(300);
			$(".chat-logs").stop().animate({
				scrollTop : $(".chat-logs")[0].scrollHeight
			}, 1000);
			$("#chat-input").attr("disabled", true);
		}

		$(document).delegate(".chat-btn", "click", function() {
			var value = $(this).attr("chat-value");
			var name = $(this).html();
			$("#chat-input").attr("disabled", false);
		})

		$("#chat-circle").click(function() {
			$("#chat-circle").toggle('scale');
			$(".chat-box").toggle('scale');
		})

		$(".chat-box-toggle").click(function() {
			$("#chat-circle").toggle('scale');
			$(".chat-box").toggle('scale');
		})

	})
</script>
</head>
<body>
	<div id="body">
		<c:choose>
			<c:when test="${sessionScope.userInfo.r_id ne null }">
				<div id="chat-circle" class="btn btn-raised">
					<div id="chat-overlay"></div>
					<i class="fa fa-commenting" aria-hidden="true"></i>
				</div>
			</c:when>
			<c:otherwise></c:otherwise>
		</c:choose>
		<div class="chat-box">
			<div class="chat-box-header">
				ChatBot <span class="chat-box-toggle"><i
					class="material-icons">close</i></span>
			</div>
			<div class="chat-box-body">
				<div class="chat-box-overlay"></div>
				<div class="chat-logs"></div>
				<!--chat-log -->
			</div>
			<div class="chat-input">
				<form>
					<input type="text" id="chat-input" placeholder="Send a message..." />
					<button type="submit" class="chat-submit" id="chat-submit">
						<i class="material-icons">send</i>
					</button>
				</form>
			</div>
		</div>




	</div>
</body>
</html>