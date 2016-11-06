// Rewrite table depending on some action
var pageAndSortTable = function() {
	$.ajax({
		type: "GET",
		url : "pharmacist",
		data: {
			"page" : pageNumber - 1,
			"size" : rowsOnPage,
			"sortBy" : sortBy
		},
		success : function(newTableBody) {
			$("#mainTable>tbody").replaceWith($(newTableBody)
					.find("#mainTable>tbody"));
			$("ul.pagination").replaceWith($(newTableBody)
					.find("ul.pagination"));
			refreshPointer();
		}
	});
}

// Reassign pointer class to specified tags 
var refreshPointer = function() {
	$(".pagination>li>span").addClass("pointer");
	$("#row-count>ul>li>span").addClass("pointer");
}

// Get list of drugs for selected prescription
var getListOfDrugsForPrescription = function(id, selectedPatient) {
	$.ajax({
		type: "GET",
		url : "drugsOfPrescription",
		data: {"prescriptionId" : id},
		success : function(listOfDrugs) {
			$("#divlistOfDrugs .modal-title:first-of-type").text("List of drugs in " + selectedPatient + "'s prescription");
			$("#listOfDrugs>tbody>tr").remove();
			$.each(listOfDrugs, function(i, item) {
				var $tr = $("<tr></tr>");
				$("#listOfDrugs>tbody").append($tr);
				$tr.append("<td>" + item.name + "</td>");
				$tr.append("<td>" + item.description + "</td>");
			});
			$("#divlistOfDrugs").modal("show");		
		}
	});
}

// Give out selected prescription
var giveOutSelectPrescription = function(id, selectedPatient) {
	var prescriptionJSON = {"id" : id};
	$.ajax({
		type: "PUT",
		contentType : "application/json",
		url : "giveOutPrescription",
		data: JSON.stringify(prescriptionJSON),
		success : function(response) {
			if (response === "Ok") {
				openNewPage(pageNumber, rowsOnPage, sortByColumn, sortDirection);
				$("#divlistOfDrugs").modal("hide");
			}
			if (response === "Error") {
				var $h = $("#errorModal div.modal-body").append("<h4></h4");
				$h.text("List of drugs in " + selectedPatient + "'s prescription " +
						"wasn't delivered");
				$("#divlistOfDrugs").modal("hide");
				$("#errorModal").modal("show");
			}
		}
	});
}

// Ajax request for autocomplete
var autocomplete = function (request, response, role) {
	var filterValue = {
			"user" : request.term,
	        "userRole" : role
	        };
	$.ajax({
		type: "GET",
		url: "getUsersByRole",
		data: filterValue,
		success: function(data) {
			var items = [];
			$.each(data.content, function(i, object) {
				items.push(object.fullName);
			});
			return response(items);
			}
    });
}

// Open page with filtered prescription by patient
var openPageByFilteredName = function(url, fullName, pageNumber, rowsOnPage, sortDirection, sortByColumn) {
	$.ajax({
		type: "GET",
		url : url,
		data: {
//			"role" : role,
			"filteredUser" : fullName,
			"pageNumber" : pageNumber,
			"rowsOnPage" : rowsOnPage,
		    "sortDirection" : sortDirection,
		    "sortByColumn" : sortByColumn
			},
		success : function(newTableBody) {
			$("#mainTable>tbody").replaceWith($(newTableBody)
					.find("#mainTable>tbody"));
			$("ul.pagination").replaceWith($(newTableBody)
					.find("ul.pagination"));
			refreshPointer();
		}
	});
}
