<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
	img{
		width:100px;
		hight:120px;
		margin-bottom: 50px;
	}
	.info{
		margin-top: 20px;
	}
	h5{
	color: #A593E0;
	}
	.bt{
		color: #7b5ce6;
		font-size: 15px;
	}
	.ts{
		font-size: 12px;
		color: #6a696e;
	}
	.td{
		font-size:13px;
	}
	.span1{
		color:#146eff;
	}
	.span2{
		padding: 5px;
		padding-left:9px;
		padding-right:9px;
		border: 1px solid #A593E0;
		border-radius: 8px;
	}
	.state{
		padding-left: 120px;
		font-size: 13px;
		color: #A593E0;
	}
</style>
</head>
<body>

<%
			for(int i=0;i<5;i++){
		%>
			<div class="row shadow-sm p-3 mb-5 bg-white rounded">
			<div style="display: inline-block;">
				<img class="bookImg" alt="이미지가 없습니다." src="../img/book2.jpg">
			</div>
			<div style="display: inline-block;">
				<span class="bt">내가 원하는 것을 나도 모를 때 </span><br>
				<span class="ts">이도우</span><br>
				<span class="ts">동양출판사</span><br>
				<span class="td"> <span class="span1">대출일</span> : 2020-04-10</span><br>
				<span class="td"> <span class="span1">반납기한</span> : 2020-04-17</span><span class="state"><span class="span2">대출중</span></span>
			</div>
		</div>
		<%
			}
		%>
</body>
</html>