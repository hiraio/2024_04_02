<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 가져오기(GET)</title>
</head>
<body>
	<%
		// *쿠키(Cookies)
		// - 웹 브라우저가 저장하는 데이터
		// - 필요한 정보를 클라이언트(웹 브라우저)에서 저장
		// - 다양한 정보 추적을 목적으로 데이터가 유지됨
		// - 주로 브라우저에서 사용자가 선택한 내용들을 저장	
		
	    Cookie[] cookies = request.getCookies();
	
		if(cookies != null) { // 쿠키가 존재하는 경우
			out.println("<h2>모든 쿠키의 이름과 값 찾기</h2>");
			for(Cookie cookie : cookies) {
				out.print("name : " + cookie.getName() + "<br>");
				out.print("value : " + cookie.getValue() + "<br>");
				out.print(cookie.getComment() + "<br>");
			}
		} else {
			out.println("<h2>쿠키를 찾지 못했습니다.</h2>");
		}
	%>

</body>
</html>





