
function clearSelection() {
	$('#diseaseIdH').removeAttr('value');
	$('#inputName').val("");
	$('#inputDescription').val("");
}


function addOrEdit() {
	if ($('#diseaseIdH').val()) {
		editDisease();
	} else {
		addDisease();
		}	
	
	clearSelection();
}

function editDisease() {
	var map = new Array(); 
	map[0] = $('#inputName').val();
	map[1] = $('#inputDescription').val();
	map[2] = $('#diseaseIdH').val();

	id = $('#diseaseIdH').val();

	$.ajax({
		type : "post",
		url : "editDisease",
		traditional : true,
		data : {
			disease : map
		},
		success : function() {
			$('input[value='+ id +']').closest('tr').find('.diseaseName').html($('#inputName').val());
			$('input[value='+ id +']').closest('tr').find('.diseaseDesc').html($('#inputDescription').val());
		},
		error : function(e) {
			alert('Error' + e);
		}
	});
}


function fillModal(id) {
	
	name = $('input[value='+ id +']').closest('tr').find('.diseaseName').html();
	desc = $('input[value='+ id +']').closest('tr').find('.diseaseDesc').html();
	
	$('#inputName').val(name);
	$('#inputDescription').val(desc);
	$('#diseaseIdH').val(id);
	
	// var name = $('input[value='+ id
	// +']').closest('tr').find('.diseaseName').html();
	// $('#inputName').val($('.diseaseName').html());
	// $('#inputDescription').val($('.diseaseDesc').html());

}


function addDisease() {
	
	var disease = new Array();
	disease[0] = $('#inputName').val();
	disease[1] = $('#inputDescription').val();

	$.ajax({
		type : "post",
		url : "addDisease",
		traditional : true,
		data : {
			disease : disease
		},
		success : function(response) {
			$('#diseases').append('<tr class="diseaseRow"> <td><input class="diseaseCB" name="checkbox1" type="checkbox" value=' + JSON.parse(response) + '></td> <td class="diseaseName">' + disease[0] + '</td> <td class="diseaseDesc">' + disease[1] + '</td> <td onclick=fillModal("' + JSON.parse(response) + '") class="editBtn"><a data-toggle="modal" href="#addDiseaseDiv">Edit</a></td> <td><a href="diseasedrug/' + JSON.parse(response) + '" > Drugs</td> <td><a href="disSymptoms/' + JSON.parse(response) + ' "> Symptoms</td> </tr>');
		},
		error : function(e) {
			alert('Error' + e);
		}
	});
}
	


function deleteSelected() {

	var array = $("#diseases input:checkbox:checked").map(function() {
		return $(this).val();
	}).get();
	
	if (array.length < 1) {
		alert('пусто');
	} else {
		$.ajax({
			type : "post",
			url : "deleteSelected",
			traditional : true,
			data : {
				jsona : array
			},
			success : function(responce) {
				$('#diseases').each(
						$('tr:has(input[type="checkbox"]:checked)').remove());
			},
			error : function(e) {
				alert('Error' + e);
			}
		});
	}
}
	
