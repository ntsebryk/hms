$(document).ready(function() {

	$('#buttonsymp').click(function() {
		var a = $('#sympsel');
		$('#symplistid').append('<li>' + a.val() + '</li>');
		getSymptoms2();
		$('#sympsel :selected').remove();
	});

	$('#buttonrec').click(function() {
		getSymptoms();
	});

	$('#symplistid li').click(function() {
		getSymptomByName($(this).text());
	});

	// $("#myid li").click(function() {
	// alert($(this).text());
	// });

	function getSymptoms2() {
		var listArrayy = [];
		$('#symplistid li').each(function() {
			listArrayy.push($(this).text());
		});
		$.ajax({
			type : "GET",
			url : "/hospital/patientsymptoms/getdisease",
			data : {
				"listArrayy" : listArrayy.join()
			},
			success : function() {
				
			},
			error : function() {
				alert("Error");
			}
		});
	};
	
	function getSymptoms() {
		var listArray = [];
		$('#symplistid li').each(function() {
			listArray.push($(this).text());
		});
		$.ajax({
			type : "GET",
			url : "/hospital/patientsymptoms/getsymptoms",
			data : {
				"listArray" : listArray.join()
			},
			success : function() {
				
			},
			error : function() {
				alert("Error");
			}
		});
	}
	;

	function getSymptomByName(names) {
		var name = names;
		$.ajax({
			type : "GET",
			url : "/hospital/patientsymptoms/symptom",
			data : {
				"name" : name
			},
			success : function() {
				alert(name);
			},
			error : function() {
				alert("Error");
			}
		})
	}

});