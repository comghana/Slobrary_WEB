<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	String category = "안내사항";
	String pageNames = "공지사항, 도서관 일정";
	String pageUrls = "NoticeBoard.jsp, CalendarPage.jsp";
	String currentPage = "도서관 일정";
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<title>Slobrary - <%=currentPage%></title>
<%@ include file="/CND.jsp"%>
<link rel="stylesheet" href="/css/noticeBoard.css?v=1">
</head>

<body>
	<jsp:include page="Top.jsp" flush="false" />

	<div class="container-fluid mb-5">
		<div class="row mt-4 pt-4 justify-content-md-center">
			<div class="col-xl-3 mr-n5" id="menuid">
				<jsp:include page="/SideMenuBar.jsp" flush="false">
					<jsp:param name="category" value="<%=category%>" />
					<jsp:param name="pageNames" value="<%=pageNames%>" />
					<jsp:param name="pageUrls" value="<%=pageUrls%>" />
					<jsp:param name="currentPage" value="<%=currentPage%>" />
				</jsp:include>
			</div>
			
			<div class="col-xl-7 mt-5 mb-5" id="content">
				<h1><%=currentPage%></h1><hr class="mb-4">
				<div id="calendar-view">
                	<jsp:include page="/Calendar.jsp" flush="false">
                		<jsp:param value="page" name="view"/>
                	</jsp:include>
            	</div>
			</div>
		</div>
	</div>

	<jsp:include page="/Footer.jsp" flush="false" />
</body>
</html>