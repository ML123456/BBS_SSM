<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>你还未登录，请先登录！</title>
	<%
		pageContext.setAttribute("APP_PATH", request.getContextPath());
	%>
	<link href="${APP_PATH }/static/img/favicon.ico" rel='icon' type='image/x-icon'/>
</head>
<body>
	<!-- 首页-头部 -->
	<jsp:include page="/head/head.jsp"></jsp:include>
	<!-- 首页-登录、注册 -->
	<jsp:include page="/login/login.jsp"></jsp:include>

	<script>
		if (userid != "") {	// 已登录
			// 跳转到用户首页
			go();
		} else {	// 未登录
			layer.msg("请登录！",{icon: 4});
			// 弹出登录模态框
			$("#loginModal").modal();
		}
	</script>
</body>
</html>