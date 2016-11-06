// Default values to show page
var pageNumber = null;
var rowsOnPage = null;
var sortBy = [];
var directionAdditional = 1;

// Transfer variables for prescription give out
var selectedPatient;
var prescriptionId;

// Transfer variables for filtered prescription
var fullName;

$(document).ready( function() {
	$("#mainTable>thead>tr").children().eq(0).attr("id", "patientFullName");
	$("#mainTable>thead>tr").children().eq(1).attr("id", "doctorFullName");
	$("#mainTable>thead>tr").children().eq(2).attr("id", "createdDate");
	$("#mainTable>thead>tr").children().eq(3).attr("id", "checkOutDate");
	$("#mainTable>thead>tr").children().eq(4).attr("id", "prescriptionState");
	refreshPointer();
	$("#patientFullName").autocomplete({
		autoFocus: true,
		delay: 500,
		minLength: 2,
		source: function(request, response) {
			autocomplete(request, response, "ROLE_PATIENT")			
		}
	});
	$("#doctorFullName").autocomplete({
		autoFocus: true,
		delay: 500,
		minLength: 2,
		source: function(request, response) {
			autocomplete(request, response, "ROLE_DOCTOR")			
		}
	});
})

// Paging
$("body").on("click", ".pagination>li>span", function() {
	pageNumber = ($(this).attr("id"));
	if($("#patientFullName").val() != "" || $("#doctorFullName").val() != "") {
		if($("#patientFullName").val() != "") {
			openPageByFilteredName(fullName, pageNumber, rowsOnPage, sortDirection, sortByColumn)
		}
		
		if($("#doctorFullName").val() != "") {
			openFilteredPageByDoctor(fullName, pageNumber, rowsOnPage, sortDirection, sortByColumn)
		}
	} else {
		pageAndSortTable();
	}
});

// Select quantity of rows in table
$("body").on("click", "#row-count>ul>li>span", function() {
	$("#row-count>button").text($(this).text()).append("<span class=\"caret\"></span>");
	rowsOnPage = ($(this).text());
	pageAndSortTable();
});

// Sorting by column
var sortDirectionForTheSameColumn = 1;
$("body").on("click", "#mainTable>thead>tr>th", function() {
	sortAdditional === ($(this).attr("id"))
	directionAdditional = directionAdditional * (-1);
	pageAndSortTable();
	return;
//	if (sortAdditional === ($(this).attr("id"))) {
//		directionAdditional = directionAdditional * (-1);
//		pageAndSortTable();
//		return;
//	};
//	
//	if(($(this).attr("id")) !== "prescriptionState") {
//		sortDirection = 1;
//		sortAdditional = $(this).attr("id");
//		pageAndSortTable();
//		return;
//	}
//	
//	if(($(this).attr("id")) === "prescriptionState") {
//		sortDirection = -1;
//		sortAdditional = $(this).attr("id");
//		openNewPage(pageNumber, rowsOnPage, sortByColumn, sortDirection);
//		return;
//	}
});

// Select prescription (show list of drugs in modal window)
$("body").on("click", ".is-active", function() {
	selectedPatient = $(this).children().eq(0).text();
	// set id of selected patient
	prescriptionId = $(this).attr("id");
	getListOfDrugsForPrescription(prescriptionId, selectedPatient);
});

// Give out prescription (button in modal window)
$("body").on("click", "#giveOut", function() {
	giveOutSelectPrescription(prescriptionId, selectedPatient);
});

$("body").on("autocompleteselect", function(event, ui) {
	if($(event.target).attr("id") == "patientFullName") {
		var column = "patient";
		var fullName = ui.item.value;
	}

	if($(event.target).attr("id") == "doctorFullName") {
		column = "doctor";
		fullName = ui.item.value;
	}		
	
	url = "getFilteredPageOfPrescriptionsBy";
	directionAdditional = -1;
	sortAdditional = column;
	openFilteredPageByDoctor(url, fullName, sortAdditional, directionAdditional)
});