<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<br>
<br>
<div class="container">
	<h2 class="h2">로그인</h2>
	<br />
	<form action="/auth/loginProc" method="post">
		<div class="form-group">
			<input type="text" class="form-control" placeholder="Enter usernmae"
				id="username" name="username" value="홍길동">

		</div>
		<div class="form-group">
			<input type="password" class="form-control"
				placeholder="Enter password" id="password" name="password"
				value="asd123">
		</div>
		<br />
		<div class="input-group justify-content-center">

			<button type="submit" id="btn--login"
				class="btn btn-outline-dark align-self" style="width: 20vh">login</button>
		</div>
	</form>

	<br />
	<hr />
	<span style="display: inline-block; width: 100%; text-align: center;">간편
		로그인 </span> <br /> <br />
	<div class="input-group justify-content-center">

		<button class='btn-social-login m-2' style='background: #D93025'>
			<i class="xi-3x xi-google"></i>
		</button>
		<button class='btn-social-login m-2' style='background: #1FC700'>
			<i class="xi-3x xi-naver"></i>
		</button>
		<button class='btn-social-login m-2' style='background: #FFEB00'>
			<i class="xi-3x xi-kakaotalk text-dark"></i>
		</button>

	</div>
	<br /> <br />
</div>


<%@ include file="../layout/footer.jsp"%>