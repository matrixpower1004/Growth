<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form action="/auth/signup" method="post">
		<div class="form-group">
			<label for="username">Username</label> <input name="username" type="text" class="form-control" placeholder="Enter username" id="username" value="${signupDto.username }">
			<h6><small><span id="valid">${valid_username}</span></small></h6>
		</div>
		
		<div class="form-group">
			<label for="pwd">Password</label> <input name="password" type="password" class="form-control" placeholder="Enter password" id="password">
		</div>
		
		<div class="form-group">
			<label for="email">Name</label> <input name="name" type="text" class="form-control" placeholder="Enter name" id="name" value="${signupDto.name }">
		</div>
		
		<div class="form-group">
			<label for="email">Email</label> <input name="email" type="email" class="form-control" placeholder="Enter email" id="email" value="${signupDto.email }">
		</div>
	<button id="btn-save" class="btn btn-primary">회원가입완료</button>
	</form>

</div>

<script src="/js/member/signup.js"></script>
<%@ include file="../layout/footer.jsp"%>

