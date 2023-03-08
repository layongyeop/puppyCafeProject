<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
<title>** Gyojin's Profile **</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td class="titlebox">
				<span class="title01">DEVELOPER GYOJIN'S PROFILE</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">I'm Gyojin Lee, a developer who wants a development job. Please call me back.</span>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<center>						
							<table border="0" cellspacing="0" cellpadding="10">
								<form action="joinOk" method="post" name="join_frm">
									<tr>
										<td><span class="content_text01">아 이 디 : </span></td>
										<td><input class="input_type01" type="text" name="mid"></td>
									</tr>
									<tr>
										<td><span class="content_text01">비밀번호 : </span></td>
										<td><input class="input_type01" type="password" name="mpw"></td>
									</tr>
									<tr>
										<td><span class="content_text01">비밀번호체크 : </span></td>
										<td><input class="input_type01" type="password" name="mpw_check"></td>
									</tr>
									<tr>
										<td><span class="content_text01">이&nbsp;&nbsp;&nbsp;&nbsp;름 : </span></td>
										<td><input class="input_type01" type="text" name="mname"></td>
									</tr>
									<tr>
										<td><span class="content_text01">전화번호 : </span></td>
										<td><input class="input_type01" type="text" name="mphone"></td>
									</tr>
									<tr>
										<td><span class="content_text01">반려견이름 : </span></td>
										<td><input class="input_type01" type="text" name="pmname"></td>
									</tr>
									<tr>
										<td><span class="content_text01">반려견성격 : </span></td>
										<td><input class="input_type01" type="text" name="pmcharacter"></td>
									</tr>
									<tr>
										<td><span class="content_text01">반려견종류 : </span></td>
										<td><select name="pmspecies">
												
												<option value="1">포메라니안</option>
												<option value="2">푸들</option>
												<option value="3">비숑프리제</option>
												<option value="4">치와와</option>
												<option value="5">닥스훈트</option>
												<option value="6">말티즈</option>
												<option value="7">시츄</option>
												<option value="8">요크셔테리어</option>
												<option value="9">스피츠</option>
												<option value="10">시바견</option>
												<option value="11">웰시코기</option>
												<option value="12">프렌치불독</option>
												<option value="13">비글</option>
												<option value="14">골든리트리버</option>
												<option value="15">레보라도리트리버</option>
												<option value="16">시베리안허스키</option>
												<option value="17">보더콜리</option>
												<option value="18">사모예드</option>
											</select>
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">반려견나이 : </span></td>
										<td><input class="input_type01" type="text" name="pmage"></td>
									</tr>
									<tr>
										<td><span class="content_text01">반려견생일 : </span></td>
										<td><input class="input_type01" type="text" name="pmbirth" placeholder="(예)2020-08-15"></td>
									</tr>
									<tr>
										<td colspan="2">
											<input class="button_type01" type="submit" value="가입완료" >
											<input class="button_type01" type="button" value="로그인" onclick="script:window.location='login'">
										</td>
									</tr>
								</form>							
							</table>
							</center>							
						</td>						
					</tr>
					
				</table>
				</center>			
			</td>
		</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>