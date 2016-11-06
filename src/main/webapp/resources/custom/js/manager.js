var currentPage = 0;
var pageSize = 5;

var showNewUsers = function (requestedPage, pageSize) {
    var pageNumber = {
        requestedPage   : currentPage,
        pageSize        : pageSize
    };
    $.ajax({
        type 	: 'GET',
        url 	: "/hospital/admin-manager/newUsers",
        data 	: pageNumber,
        success : function(response) {
            $(".someResponseContent")
                .replaceWith($(response)
                .find(".someResponseContent"));
            $(".userPages")
                .replaceWith($(response).find(".userPages"));
        },
        fail    : function(response) {
            alert(response + 'fail');
        }
    });
};

//var showMyInfo = function() {
//	$.ajax({
//		type : 'GET',
//		url:'/hospital/admin-manager/showMyInfo',
//		success: function(response) {
//			alert(response);
//		}
//	});
//};

jQuery.fn.live = function (types, data, fn) {
    jQuery(this.context).on(types,this.selector,data,fn);
    return this;
};
$(document).ready(function() {
	// showNewUsers(currentPage, pageSize);
//	showMyInfo();

	$(".adjusted,#pageNumberOfNewUsers li")
        .live("click", function() {
		currentPage = isNaN(parseInt(this.id))
            ? parseInt($(this).text()) : parseInt(this.id);
		showNewUsers(currentPage, pageSize);
	});

	/*
	 * Function listenes for 'click' event on <li></li> element of parent element with id "cardPages".
	 * Once the event happened, function sends id of <li></li> element to controller, and receives
	 * html page with new page. Next it find in responce the element with class 'allCards'.	 *
	*/
    $("#cardPages li").live("click", function() {

        var page = {
            requestedPage : this.id
        };
        $.ajax({
            type 	: 'GET',
            url 	: "/hospital/admin-manager",
            data 	: page,
            success : function(response) {
                $(".allCards")
                    .replaceWith($(response).find(".allCards"));
                $("#cards td").popover({placement: "auto left"});
                $('#cards').on('mouseenter', 'td', function() {
                    $(this).popover('show');
                });
                $('#cards').on('mouseleave', 'td', function() {
                    $(this).popover('hide');
                });
            }
        });
    });

    $("#approoveOptsList li").live("click", function() {
    	var userId = parseInt(this.id);
    	var Status = jQuery(this).find("span").text();
    	var changeStatus = {
            id   		: userId,
            status   	: Status == "Aproove" ? "APPROVED" : "REJECTED"
        };
    	$.ajax({
            datatype:"json",
            type: "PUT",
            url: "/hospital/admin-manager/changeStatus",
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            data: JSON.stringify(changeStatus),
            success: function(response) {
                showNewUsers(currentPage, pageSize);
            },
            error: function(e) {
            }
    	});
    });
    $("#cards td").popover({placement: "auto left"});
    $('#cards').on('mouseenter', 'td', function() {
        $(this).popover('show');
    });
    $('#cards').on('mouseleave', 'td', function() {
        $(this).popover('hide');
    });
});
