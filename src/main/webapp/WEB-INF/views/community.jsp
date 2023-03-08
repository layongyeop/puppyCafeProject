<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
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
							<br><br>
							<center>
							<table width="80%" border="0" cellspacing="0" cellpadding="10">
								<tr>
									<th class="board_title">번호</th>
									<th class="board_title">아이디</th>
									<th class="board_title" width="50%">글 제목</th>
									
									<th class="board_title">등록일</th>
								</tr>
								<c:forEach items="${boardDto }" var="bdto">
								<tr>
									<td class="board_content01">${bdto.bnum }</td>
									<td class="board_content01">${bdto.bid }</td>
									<td class="board_content01"><a href="contentView?bnum=${bdto.bnum }">${bdto.btitle }</a></td>
									<td class="board_content01">
									<c:out value="${fn:substring(bdto.bdate,0,10) }"></c:out>										
									</td>
									<a href="questionView?bnum=${bdto.bnum }">
									<!-- 
									<c:choose>
										<c:when test="${fn:length(bdto.bcontent) > 23 }">
											<c:out value="${fn:substring(bdto.bcontent,0,22) }"></c:out>...
										</c:when>
										<c:otherwise>
											<c:out value="${bdto.bcontent }"></c:out>
										</c:otherwise>
									</c:choose>
									</a>
									</td>
									 -->
									
									
								</tr>						
								</c:forEach>
								<tr>
									<td colspan="5" align="center">
										<c:if test="${pageMaker.prev }">
											<a href="community?pageNum=${pageMaker.startPage-5 }">Prev</a>&nbsp;&nbsp;&nbsp;
										</c:if>										
										<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
											<c:choose>
											<c:when test="${currPage == num}">
											<u>${num}</u>&nbsp;&nbsp;&nbsp;
											</c:when>
											<c:otherwise>
											<a href="community?pageNum=${num}">${num}</a>&nbsp;&nbsp;&nbsp;
											</c:otherwise>
											</c:choose>																					
										</c:forEach>
										<c:if test="${pageMaker.next }">
											<a href="community?pageNum=${pageMaker.startPage+5 }">Next</a>
										</c:if>	
									</td>
								</tr>
									
								<tr>
									<td colspan="5" align="right">
										<input type="button" value="글쓰기" class="button_type01" onclick="script:window.location='boardInsert'">
									</td>
								</tr>

								
							</table>
							</center>
							<br>						
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