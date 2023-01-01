let index = {

	init: function(){
		$("#btn--save").bind("click", () => {
			this.save();
		});
		
		$("#btn--update").bind("click", () => {
			this.update();
		});

	},
	save: function() {
		let data = {
			username: $("#username").val(), 
			name: $("#nicknmae").val(), 
			password: $("#password").val(),
			email: $("#email").val(),
			phoneNumber: $("#phoneNumber").val(),
			address: $("#address").val(),
			postCode: $("#postcode").val(),
		};

		$.ajax({
			type : "POST",
			url : "/auth/joinProc",
			data : JSON.stringify(data), 
			contentType : "application/json; charset=utf-8",
			dataType: "json" 
						
		}).done(function(data, textStatus, xhr ){
			alert("회원가입을 성공했습니다. ")
			location.href = "/"; 
		}).fail(function(error){
			console.log(error);
			alert("회원가입을 실패하였습니다." + error.responseJSON.message);
		});
	
	},
	
}

index.init();