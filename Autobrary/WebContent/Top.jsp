<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memMgr" class="database.MemMgr" />
<%
String mem_id = (String)session.getAttribute("loginKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=2.0, user-scalable=1">
    <title>Slobrary</title>
    <link href="/css/top.css" rel="stylesheet">
    <!-- 웹폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Major+Mono+Display&display=swap" rel="stylesheet">
	<jsp:include page="/CND.jsp" flush="false"/>
</head>
<body>
<div id="header" class="container-fluid pt-4 shadow-sm bg-white">
        <div class="row ml-5 mr-5">
            <div id="logo-main" class="col-sm-3 m-auto d-none d-lg-block">
                <a class="navbar-brand float-d-flex mr-auto logo mt-n3" href="/">
                    <!--AutoBrArY-->
                    sloBrArY
                    <p>just take it!</p>
                </a>
            </div>
            <div class="col-md-12 col-lg-9">
                <nav id="search-header" class="navbar navbar-expand-md navbar-light mb-1">
                    <div id="search-searchbar" class="input-group md-form form-sm pl-0 shadow-sm">
                        <div class="input-group-prepend">
                            <span class="input-group-text ml-3"><i class="fas fa-search" aria-hidden="true"></i></span>
                        </div>
                        <input class="form-control my-0 py-1 mr-1" type="text" aria-label="Search">
                    </div>
                </nav>

                <nav id="nav-header" class="navbar navbar-expand-md navbar-light">
                    <div id="nav-size" class="container-fuil">
                        <div class="row">

                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                                <a id="logo-nav" class="logo" href="/"><!-- AutoBrArY -->sloBrArY</a>
                                <ul id="nav-main" class="navbar-nav mr-auto">
                                    <li class="nav-item">
                                        <a class="nav-link" href="/contents/SearchPage.jsp">도서검색<span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">안내사항</a>
                                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                                            <a class="dropdown-item" href="/NoticeBoard.jsp">공지사항</a>
                                            <a class="dropdown-item" href="/CalendarPage.jsp">도서관 일정</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">도서관서비스</a>
                                        <div class="dropdown-menu" aria-labelledby="dropdown02">
                                      	<form method="post" action="/contents/WishBookPage.jsp">
                                        	<input type="submit" class="dropdown-item" value="희망 도서">
                                        	<input type="hidden" name="mem_id" value=<%=mem_id %>/>
                                         </form>   
                                            <a class="dropdown-item" href="#">문화 행사</a>
                                            <a class="dropdown-item" href="#">시설 이용</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">이용안내</a>
                                        <div class="dropdown-menu" aria-labelledby="dropdown03">
                              
                                       		<a class="dropdown-item" href="#">도서관 소개</a>                                       	                                
                                            <a class="dropdown-item" href="#">대출 및 반납</a>
                                            <a class="dropdown-item" href="/contents/QnAPage.jsp">자주 물어보는 질문</a>
                                        </div>
                                    </li>
                                </ul>
                                <%
 								if(mem_id == null) {%>
 								<ul class="navbar-nav navbar-right">
    								<li class="nav-item"> <a href="/Login.jsp" class="nav-link">로그인</a></li>
   									<li class="nav-item"> <a href="/Signup.jsp" class="nav-link ">회원가입</a></li>
		 						</ul><%} else {%>
								<ul class="navbar-nav navbar-right">
    								<li class="nav-item"> <a href="/contents/MyPage.jsp" class="nav-link">마이페이지</a></li>
   									<li class="nav-item"> <a href="/LogoutProc.jsp" class="nav-link ">로그아웃</a></li>
		 						</ul><%}%>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</body>
<script>
    $(document).ready(function() {
        var $nav_header = $("#nav-header");
        $(window).scroll(function() {
            if ($(this).scrollTop() > 100 && $nav_header.hasClass("navbar-light")) {
                $nav_header.removeClass("navbar-light").addClass("navbar-dark bg-reverse fixed-top");
                $("#logo-nav").show();
            } else if ($(this).scrollTop() <= 100 && $nav_header.hasClass("navbar-dark bg-reverse fixed-top")) {
                $nav_header.removeClass("navbar-dark bg-reverse fixed-top").addClass("navbar-light");
                $("#logo-nav").hide();
            }
        }); //scroll
        
        $('.dropdown-toggle').dropdown();	// dropdown 오류가 있어서 추가
        $('.dropdown').hover(function () {
            $(this).find('.dropdown-menu').first().stop(true, true).slideDown(150);
        }, function () {
            $(this).find('.dropdown-menu').first().stop(true, true).slideUp(105)
        });
    });

    $(document).ready(function() {
        var $default3 = $("#nav-size");
        $(window).scroll(function() {
            if ($(this).scrollTop() > 100 && $default3.hasClass("container-fuil")) {
                $default3.removeClass("container-fuil").addClass("container");
            } else if ($(this).scrollTop() <= 100 && $default3.hasClass("container")) {
                $default3.removeClass("container").addClass("container-fuil");
            }
        }); //scroll
    });

    jQuery(window).scroll(function() {
        if (jQuery(window).scrollTop() > 100) {
            jQuery('#logo-small').css('display', 'block');
        } else {
            jQuery('#logo-small').css('display', 'none');
        }
    });
    jQuery(window).scroll(function() {
        if (jQuery(window).scrollTop() > 100) {
            jQuery('#nav-size').css('display', 'block');
            jQuery('#nav-size-small').css('display', 'none');
        } else {
            jQuery('#nav-size').css('display', 'block');
            jQuery('#nav-size-small').css('display', 'none');
        }
    });
</script>
</html>