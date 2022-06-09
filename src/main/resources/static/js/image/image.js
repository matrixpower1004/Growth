
let index = {
		init: function(){
			$("#btn-delete").on("click",  ()=>{
					this.deleteById();
			}); 
			$("#btn-update").on("click",  ()=>{
				this.update();
			}); 
			$("#btn-reply-save").on("click",  ()=>{
				this.replySave();
			}); 
		},
		
		
		deleteById: function(){
			let id = $("#id").text();
			
			$.ajax({ 
				type: "DELETE",
				url: "/api/image/"+id,
				dataType: "json"
			}).done(function(resp){
				alert("삭제가 완료되었습니다.");
				location.href = "/image";
			}).fail(function(error){
				alert("삭제가 실패하였습니다.");
				alert(JSON.stringify(error));
			}); 
		},
	
		
		update: function(){
			let id = $("#id").val();
			let formData = new FormData();
			
			let data = {
					title: $("#title").val(),
					content: $("#content").val()
					
			};
			
			$.ajax({ 
				type: "PUT",
				url: "/api/board/"+id,
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			}).done(function(resp){
				alert("글수정이 완료되었습니다.");
				location.href = "/";
			}).fail(function(error){
				alert(JSON.stringify(error));
			}); 
		},
		
		replySave: function(){
			let data = {
					userId: $("#userId").val(),
					boardId : $("#boardId").val(),
					content: $("#reply-content").val()
			};
			
			$.ajax({ 
				type: "POST",
				url: `/api/board/${data.boardId}/reply`,
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			}).done(function(resp){
				alert("댓글작성이 완료되었습니다.");
				location.href = `/board/${data.boardId}`;
			}).fail(function(error){
				alert(JSON.stringify(error));
			}); 
		},

		replyDelete: function(boardId, replyId){
			$.ajax({ 
				type: "DELETE",
				url: `/api/board/${boardId}/reply/${replyId}`,
				dataType: "json"
			}).done(function(resp){
				alert("댓글삭제가 완료되었습니다.");
				location.href = `/board/${boardId}`;
			}).fail(function(error){
				alert(JSON.stringify(error));
			}); 
		},
}


index.init();