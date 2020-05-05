<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=2.0, user-scalable=1">
    <title>Slobrary - 회원가입</title>
    <!-- 웹폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400&display=swap&subset=korean" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cinzel+Decorative:900&display=swap" rel="stylesheet">
    <!-- 아이콘 라이브러리-->
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <!-- 부트스트랩 4 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
    <link href="css/signup.css" rel="stylesheet">
</head>
<body class="bg-light">
    <header class="pt-4 shadow-sm bg-white">
    <jsp:include page="Top.jsp" flush="false"/>
    </header>
    <div id="document">
        <div class="row p-5 ml-5 mr-5">
            <div class="col bg-white shadow-sm p-5 ml-5 mr-5">
                <div id="wrapper">
                <h4>회원가입</h4>
                <hr>

                <form action="SignupProc.jsp" method="post" id="signup-form" class="needs-validation" novalidate>
                    <div id="img-tab">
                        <div class="img-wrapper">
                            <img id="imgPreview" class="img-cover shadow-sm" src="img/default/userImg/girl1.png" alt="프로필사진">
                        </div>
                        <button id="openImgUpload" data-toggle="modal" data-target="#modal-img" class="btn btn-light shadow-sm" type="button"><i class="fas fa-camera"></i>&nbsp;&nbsp;프로필 사진 선택</button>
                        <input type="hidden" name="mem_img" value="girl1.png">
                    </div><br>

                    <div class="form-group">
                        <!-- 계정 정보 -->
                        <label for="mem_id">아이디</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="mem_id" placeholder="아이디를 입력해주세요." name="mem_id" required>
                            <button id="idCheck" class="btn btn-light" type="button">중복확인</button>
                        </div>

                        <label for="pwd">비밀번호</label>
                        <div class="input-group">
                            <input type="password" class="form-control" id="pwd" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$" placeholder="숫자, 대/소문자 포함 8글자 이상 입력해주세요." name="mem_pw" required>
                            <button type="button" id="btnToggle_pwd" class="toggle"><i id="eyeIcon_pwd" class="fa fa-eye"></i></button>
                            <div class="invalid-feedback mb-3">숫자, 대/소문자 포함 8글자 이상 입력해주세요.</div>
                        </div>
                        <div class="input-group">
                            <input type="password" class="form-control" id="pwdCheck" placeholder="비밀번호 확인" name="pwdCheck" required>
                            <button type="button" id="btnToggle_pwdCheck" class="toggle"><i id="eyeIcon_pwdCheck" class="fa fa-eye"></i></button>
                        </div>
                        
                        <br>
                        <!-- 회원 정보 -->
                        <label for="name">이름</label>
                        <input type="text" class="form-control" id="name" name="mem_name" required>

                        <label for="gender_male">성별</label>
                        <div class="mb-1 mt-n2">
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="gender_male" name="mem_gender" class="custom-control-input" value="남" checked>
                                <label class="custom-control-label" for="gender_male">남</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="gender_female" name="mem_gender" class="custom-control-input" value="여">
                                <label class="custom-control-label" for="gender_female">여</label>
                            </div>
                        </div>

                        <label for="birth">생년월일</label>
                        <input type="date" class="form-control" id="birth" name="mem_birth" required>

                        <label for="phone">전화번호</label>
                        <input type="tel" class="form-control" pattern="^\d{3}-\d{4}-\d{4}$" id="phone" placeholder="000-0000-0000" name="mem_phone" required>
                        <div class="invalid-feedback">000-0000-0000 형식으로 입력해주세요.</div>

                        <label for="email">이메일</label>
                        <input type="email" class="form-control" id="email" placeholder="abc@slobrary.com" name="mem_mail" required>
                        <div class="invalid-feedback">이메일 형식으로 입력해주세요.</div>

                        <label for="addr">주소</label>
                        <input type="text" class="form-control" id="addr" placeholder="" name="mem_adress" required>
                    </div>


                    <div class="form-check mb-3">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="tosCheck" required>
                            <a href="#" data-toggle="modal" data-target="#modal-TOS">이용약관</a>에 동의합니다.
                            <div class="invalid-feedback">계속하려면 체크하십시오.</div>
                        </label>
                    </div>
                    <button id="submit-btn" type="submit" class="btn btn-primary">회원가입</button>
                </form>
                </div>
            </div>
        </div>
    </div>

    <!--이용약관 모달-->
    <div class="modal fade" id="modal-TOS" tabindex="-1" role="dialog" aria-labelledby="modal-title" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modal-title">이용약관</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    <button id="btnAgreeTOS" onclick="modalAgreeTOS()" type="button" class="btn btn-primary">동의</button>
                </div>
            </div>
        </div>
    </div>

    <!--사용자 이미지 모달-->
    <div class="modal fade" id="modal-img" tabindex="-1" role="dialog" aria-labelledby="modal-title" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modal-title">프로필 이미지</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="row">
                        <div class="col-sm">
                            <label class="image-radio">
                                <div class="img-wrapper">
                                    <img class="img-cover shadow-sm" src="img/default/userImg/girl1.png">
                                    <input type="radio" name="image_radio" value="girl1.png" checked>
                                </div>
                            </label>
                        </div>
                        <div class="col-sm">
                            <label class="image-radio">
                                <div class="img-wrapper">
                                    <img class="img-cover shadow-sm" src="img/default/userImg/girl2.png">
                                    <input type="radio" name="image_radio" value="girl2.png">
                                </div>
                            </label>
                        </div>
                        <div class="col-sm">
                            <label class="image-radio">
                                <div class="img-wrapper">
                                    <img class="img-cover shadow-sm" src="img/default/userImg/girl3.png">
                                    <input type="radio" name="image_radio" value="girl3.png">
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm">
                            <label class="image-radio">
                                <div class="img-wrapper">
                                    <img class="img-cover shadow-sm" src="img/default/userImg/boy1.png">
                                    <input type="radio" name="image_radio" value="boy1.png">
                                </div>
                            </label>
                        </div>
                        <div class="col-sm">
                            <label class="image-radio">
                                <div class="img-wrapper">
                                    <img class="img-cover shadow-sm" src="img/default/userImg/boy2.png">
                                    <input type="radio" name="image_radio" value="boy2.png">
                                </div>
                            </label>
                        </div>
                        <div class="col-sm">
                            <label class="image-radio img-wrapper">
                                <div class="img-wrapper">
                                    <img class="img-cover shadow-sm" src="img/default/userImg/boy3.png">
                                    <input type="radio" name="image_radio" value="boy3.png">
                                </div>
                            </label>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                    <button id="btnSelectUserImg" onclick="modalImgSubmit()" type="button" class="btn btn-primary">선택</button>
                </div>
            </div>
        </div>
    </div>
</body>

<script type="text/javascript" src="js/signup.js"></script>
</html>