
$(document).ready(function() {

	loadMainTAble();
	$("#picplus").click(function() {
		showModal();
	});
	$("#picminus").click(function() {
		deleteSelected();
		refreshMainTable()
	});
    $('#myModal').on('hide', function (e) {
    	refreshSympTable();
        })
})
	
function showModal() {

	fillTableSymp();
	$('#myModalSymptoms').modal('show');
	$table = $('#symptoms').bootstrapTable('destroy');
	$table = $('#symptoms').bootstrapTable('load', rows);
}
	
	 function fillTableSymp () {
			rows = [];
			$.getJSON("/hospital/getSymptoms/" + diseaseId, function(list) {
				
				$.each(list, function(i, symptom) {
					rows.push({
						id : symptom.id,
						state : false,
						num : i+1,
						sympName : symptom.name,
						sympDescr : symptom.description
					});
				});
			}).done(function() {
				$table = $('#symptoms').bootstrapTable({
					data : rows
				})
			})
		}

function addSelected() {

	var selected = $table.bootstrapTable('getSelections');

	if (selected.length > 0) {

		var selectedIds = [];
		$.each(selected, function(i, selected) {
			selectedIds.push(selected.id)
		});
		
		selectedSymp = {selectedIds: selected, diseaseId : diseaseId};
		
		$('#myModalSymptoms').modal('hide');

		$.ajax({
			type : "POST",
			url : "/hospital/addDisSympt" ,
			traditional : true,
			data : selectedSymp,
			
			success : function(responce) {
				refreshMainTable();
			},
			error : function(e) {
				alert('Error' + e);
			},
		})
	} else {
		alert("NO SELECTIONS!!!!!!")
	}

}

function deleteSelected() {

	var array = $("#disease-symptoms").bootstrapTable('getSelections');

	if (array.length > 0) {

		var selectedIds = [];
		$.each(array, function(i, selected) {
			selectedIds.push(selected.id)
		})

		$.ajax({
			type : "DELETE",
	        headers: {
	            'Accept': 'application/json',
	        },
			url : "/hospital/deleteDisSympt"+"?selectedIds="+selectedIds+"&diseaseId="+ diseaseId,
			traditional : true,
			success : function(responce) {
				refreshMainTable();

			},
			error : function(e) {
				alert('Error' + e);
			},
		});

	} else {
		$('pickminus').attr('disabled', true);
	}
}

function loadMainTAble() {
	var rows = [];
	var jqxhr = $.getJSON("/hospital/getDiseaseSymptoms/" + diseaseId, function(list) {
		$.each(list, function(i, symptom) {
			rows.push({
				id : symptom.id,
				state : false,
				num : i + 1,
				sympName : symptom.name,
				sympDescr : symptom.description
			});
		});
	}).done(function() {

		$table = $('#disease-symptoms').bootstrapTable({
			data : rows
		})
	})
}

function refreshMainTable() {
	var rows = [];
	var jqxhr = $.getJSON("/hospital/getDiseaseSymptoms/" + diseaseId, function(list) {
		$.each(list, function(i, symptom) {
			rows.push({
				id : symptom.id,
				state : false,
				num : i + 1,
				sympName : symptom.name,
				sympDescr : symptom.description
			});
		});
	}).done(function() {

		$table = $('#disease-symptoms').bootstrapTable('load', rows)
	})
}

function refreshSympTable() {
	rows = [];
	$.getJSON("/hospital/getSymptoms/" + diseaseId, function(list) {
		
		$.each(list, function(i, symptom) {
			rows.push({
				id : symptom.id,
				state : false,
				num : i+1,
				sympName : symptom.name,
				sympDescr : symptom.description
			});
		});
	}).done(function() {
		$table = $('#symptoms').bootstrapTable('load', rows);
	})
}


