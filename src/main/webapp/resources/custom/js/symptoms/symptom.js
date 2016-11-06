$(document).ready(function() {
	var isSorted = true;
	var order = "asc";
	var searchLine;
	var rows = 10;
	var page = 1;
	
	//Redraws a table after click on the another page
	$('#beforeTale').on('click', 'ul.pagination>li>span', function() {
		page = parseInt($(this).attr('id'));
		drawTable(rows, page, order, isSorted, searchLine);
	});
	
	$('#beforeTale').on('click', "#row-count>ul>li>span", function(){
		$("#row-count>button").text($(this).text()).append(" <span class=\"caret\"></span>");
		rows = ($(this).text());
		drawTable(rows, 1, order, isSorted, searchLine);
	});
	
	//Changes a cursor to pointer
	$("#beforeTale").on({
		 mouseover: function() {
		  $("li>span").addClass("pointer");  
		 },
		 mouseleave: function() {
		  $("li>span").removeClass("pointer");
		 }
	});
	
	//Sorting button ("asc")
	$('#asc-sort').click(function(){
		isSorted = true;
		order = 'asc';
		page = parseInt($('li.active').find('span').attr('id'));
		drawTable(rows, page, order, isSorted, searchLine);
	});
	
	//Sorting button ("desc")
	$('#desc-sort').click(function(){
		isSorted = true;
		order = 'desc';
		page = parseInt($('li.active').find('span').attr('id'));
		drawTable(rows, page, order, isSorted, searchLine);
	});
	
	//Search with time delay
	var timer;
	$('#searchField').keyup(function(){
		clearTimeout(timer);
		searchLine = $(this).val();
		timer = setTimeout(function() {
			drawTable(rows, 1, order, isSorted, searchLine);
		}, 800);
	});
	
	//Removes selected symptoms
	$('#remove-data').click(function() {
		var arr = [];
		$('input[name="SelectItem"]:checked').each(function(i) {
			arr.push($(this).attr('id'));
		});
		page = parseInt($('li.active').find('span').attr('id'));
		$.ajax({
			type : 'POST',
			url : "/hospital/symptoms/deleteChecked",
			traditional : true,
			data : {'indexes': arr, 'rows': rows, 'page': page, 'sort': order, 'isSorted': isSorted, 'search': searchLine},
			success : function(data) {
				drawTable(rows, page, order, isSorted, searchLine);
			},
			error : function(e) {
				alert('Error: ');
			},
			});
		});
	
	//Fills a modal window with content to update
	$('#beforeTale2').on('click', 'a[data-name="edit"]', function(){
		var tr = $(this).closest('tr');
		tdName = tr.children().eq(2).text();
		tdDescription = tr.children().eq(3).text();
		$('input[id="nameEdit"]').val(tdName);
		$('textarea[id="descriptionEdit"]').val(tdDescription);
	})	
	
	//Adding symptom
	$('button[id="add-symptom"]').click(function(){
		var name = $('input[id="nameAdd"]').val();
		var description = $('textarea[id="descriptionAdd"]').val();
		page = parseInt($('li.active').find('span').attr('id'));
		$.ajax({
			type: 'POST',
			url: 'symptoms/add',
			data: {"name": name, "description": description},
			success: function(request){
				if(request === "OK"){
					drawTable(rows, page, order, isSorted, searchLine);
				}
				$("#myModalSymptoms").modal("hide");
				$('input[id="nameAdd"]').val("");
				$('textarea[id="descriptionAdd"]').val("");
				},
			error: function(){alert('Symptom not added')},
		})
	})
		
	// Editing symptom
	$('button[id="edit-symptom"]').click(function(){
		var newName = $('input[id="nameEdit"]').val();
		var newDescription = $('textarea[id="descriptionEdit"]').val();
		page = parseInt($('li.active').find('span').attr('id'));
		$.ajax({
			type: 'POST',
			url: 'symptoms/save',
			data: {"name": tdName, "description": tdDescription, "newName": newName, "newDescription": newDescription},
			success: function(request){
				if(request === "OK"){
					drawTable(rows, page, order, isSorted, searchLine);
				}
				$("#edit").modal("hide");
				},
			error: function(){alert('Symptom not updated')},
		})
	})
})


// Function which redraws a table
var drawTable = function(rowsNum, pageNumber, order, isSorted, searchLine) {
	 $.ajax({
	  type: "GET",
	  url : "/hospital/symptoms",
	  data: {"rows": rowsNum, 'page': pageNumber, 'sort': order, 'isSorted': isSorted, 'search': searchLine},
	  success : function(newTableBody) {
	   $("#table-methods-table").replaceWith($(newTableBody)
	     .find("#table-methods-table"));
	   $("ul.pagination").replaceWith($(newTableBody)
	     .find("ul.pagination"));
	  }
	 });
}
