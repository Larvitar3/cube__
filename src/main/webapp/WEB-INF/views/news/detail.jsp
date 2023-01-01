<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<br><br>

<br>
<br>
<div class="container">

	<button class="btn btn-outline-secondary" onclick="history.back();">돌아가기</button>
	<c:if test="${news.user.id == principal.id}">
		<a class="btn btn-outline-warning" id="" href="/board/${news.id}/update_form">수정</a>
		<a class="btn btn-outline-danger" id="" href="/board/delete/${news.id}">삭제</a>
	</c:if>
	<br /> <br /> <br />

	<div>
		<input type="hidden" id="board-id" value="${news.id}"> 글 번호 : <span> <i> ${boardData.id + 100} </i></span>
	</div>
	<div>
		글 작성자 : <span> <i> ${news.user.username} </i></span>
	</div>
	<br /> <br /> <br />
	<div class="">
		<h3>${news.title}</h3>
	</div>
	<br /> <br />
	<div>${news.content}</div>
	<br /> <br /> <br />
	<div class="card">

		<div class="card-body">
			<textarea rows="1" class="form-control" id="content"></textarea>
		</div>
		<div class="card-footer">
			<button class="btn btn-success" id="btn-reply-save" style="float: right">add reply</button>
		</div>

		<br>
		<div class="card">
			<div class="card-header">댓글 목록</div>
		</div>
	</div>
	<ul class="list-group">

		<%-- <c:forEach var="reply" items="${boardData.reply}">
			<li class="list-group-item"><c:choose>
					<c:when test="${reply.user.id eq principal.user.id}">
						<input class="form-control" type="text" id="content2" name="content2" value="${reply.content}">
						</input>
						<div class="d-flex float-right">
							<div>작성자 :&nbsp; ${reply.user.username} &nbsp;&nbsp;</div>
							<button class="btn btn-light" onclick="index.replyUpdate(${boardData.id}, ${reply.id})">🖋</button>
							<button class="btn btn-light" onclick="index.replyDelete(${boardData.id}, ${reply.id})">🗑</button>
						</div>
					</c:when>
					<c:otherwise>
						<div class="d-flex justify-content-between">
							<div>${reply.content}</div>

							<div>작성자 :&nbsp; ${reply.user.username} &nbsp;&nbsp;</div>
						</div>
					</c:otherwise>

				</c:choose></li>

		</c:forEach> --%>

	</ul>
</div>
<br>
<br>
<br>




<script type="text/javascript" src="/js/news.js">

</script>
        
<%@ include file="../layout/footer.jsp"%>