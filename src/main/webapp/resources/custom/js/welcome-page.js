var User = {
	create: function(userForm){
        $("body").css("cursor", "progress");
        $("button").attr("disabled", "disabled");
		$.ajax({
	        data: $(userForm).serialize(),
//            data: JSON.stingifygy $(userForm).serialize(),
	        type: $(userForm).attr('method'),
	        url: $(userForm).attr('action'),
	        success: function(response) {
	        	console.log("registrationSuccess", response);
	        },
	        error: function(response) {
	        	console.log("registrationError", response);
	        },
            complete: function(response) {
                $("button").removeAttr("disabled");
                $(userForm).get(0).reset();
                $("#register").modal('hide');
                $("#modalMessage").replaceWith(response.responseText);
                $("#modalMessage").modal('show');
                $("body").css("cursor", "default");
            }
    	});
    },
    authorize: function(loginForm){
        $("body").css("cursor", "progress");
        $("button").attr("disabled", "disabled");
        $("#authorities").removeClass("has-error");
        $("#authorithationError").text('');
        $.ajax({
            data: $(loginForm).serialize(),
            type: $(loginForm).attr('method'),
            url: $(loginForm).attr('action'),
            success: function(data, response, jqXHR) {
                console.log("loginSuccess", response, jqXHR, data);
                window.location.href = data;
            },
            error: function(response) {
                console.log("loginError", response);
                $("#authorities").addClass("has-error");
                $("#authorithationError").text(response.responseText);
            },
            complete: function(response) {
                $("button").removeAttr("disabled");
                $("body").css("cursor", "default");
            }
        });
    }
};

$.urlParam = function(name){
    var results = new RegExp('[\?&amp;]' + name + '=([^&amp;#]*)').exec(window.location.href);
    if(results == null) {
    	return null;
    }
    return results[1] || 0;
};

$(function() {
		
	var app = {
		initialize: function(){
			
			if($.urlParam("action") == 'login') {
				$("#login").modal('show');
			} else if ($.urlParam("action") == 'register') {
				$("#register").modal('show');
			}
			
			this.initPlugins();
			this.setUpListeners();
		},
		
		initPlugins: function(){
			$('#registrationForm').bootstrapValidator({
		        feedbackIcons: {
		            valid: 'glyphicon glyphicon-ok',
		            invalid: 'glyphicon glyphicon-remove',
		            validating: 'glyphicon glyphicon-refresh'
		        }
		    });	
			
			$(".datepicker").datepicker({
				format : "dd.mm.yyyy",
				todayBtn : "linked",
				autoclose : true,
				todayHighlight : true
			});
		},
		
		setUpListeners: function(){
			$("#submitRegistration").on("click", function(event) {
				var validator = $('#registrationForm').data('bootstrapValidator');
				validator.validate();
				if(validator.isValid()) {
					User.create("#registrationForm");
					console.log("Request sent");
				}
				else {
					console.log("Form not valid");
				}
			});

            $("#loginSubmit").on("click", function(event) {
                User.authorize("#loginForm");
                console.log("Request for login sent");
            });
		}
	}
	
	app.initialize();
});



