<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<br>
<br>

<div class="container">
<h1 class="h2"> News </h1>
<br>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>

			</tr>
		</thead>

		<c:forEach var="num" items="${news.content}">
		<tbody >
			<tr onclick="location.href = '/news/'+ ${num.id}" >
				<td>${num.id}</td>
				<td>${num.title}</td>
				<td>${num.user.username}</td>
				<td>${num.createDate}</td>
			</tr>
		</tbody>
		</c:forEach>
	</table>

<hr/>
<%-- <c:if test="${principal.user.role eq 'ADMIN'}"> --%>
 <a type="button" class="btn btn-outline-dark" href="/news/write" style="float: right">글쓰기 </a>
<%-- </c:if>  --%>
</div>
<br/>
<br/>
<br/>

        
<%@ include file="../layout/footer.jsp"%>