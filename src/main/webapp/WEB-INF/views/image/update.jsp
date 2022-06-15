<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!--사진 업로드페이지 중앙배치-->
<main class="uploadContainer">
	<!--사진업로드 박스-->
	<section class="upload">

		<!--사진업로드 로고-->
		<div class="upload-top">
			<a href="/" class=""> <img src="/images/logo.png" alt="">
			</a>
			<p>사진 업로드</p>
		</div>
		<!--사진업로드 로고 end-->

		<!--사진업로드 Form-->
		<form class="upload-form" action="/image/${image.id }/update" method="post" enctype="multipart/form-data">

			<input type="hidden" id="id" value="${image.id }" />
			<div class="upload-form-detail">
				<input type="text" placeholder="제목" name="title" value="${image.title }" />
			</div>

			<!--사진설명 + 업로드버튼-->
			<div class="upload-form-detail">
				<textarea rows="5" class="form-control" name="content" value="${image.content }" ></textarea>
			</div>
			<!--사진설명end-->
			
			<!-- 사진 업로드 인풋 -->
			<input type="file" name="file" onchange="imageChoose(this)" />
			<div class="upload-img">
				<img src="/upload/${image.postImageUrl }" id="imageUploadPreview" />
			</div>
			<!-- 사진 업로드 인풋 end-->

			<button class="btn btn-primary" id="btn-update">수정</button>
		</form>
		<!--사진업로드 Form-->
	</section>
	<!--사진업로드 박스 end-->
</main>
<br />
<br />

<script src="/js/image/upload.js"></script>
<script src="/js/image/image.js"></script>
<%@ include file="../layout/footer.jsp"%>