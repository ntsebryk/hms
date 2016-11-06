/**
 * Created by DaNiEJIb on 11.10.2014.
 */
var GET_URL = '/hospital/getDrugsForDisease';
var order = '';
var search = '';

$(document).ready(function () {

    $('#redirect-to-disease').click(function(){
        window.location.replace('/Diseases');
    })

    $('#add-drug').click(function () {
        addDrug();
    });

    $('#remove-data').click(function () {
        deleteSeleced();
    });

    $('#close').click(function () {
        clearData();
    });

    $('#search-button').click(function () {
        findDrugByName();
    })

    $('#search-area').keypress(function (e) {
        if (e.which == 13) {
            findDrugByName();
        }
    });

    $('#coef').click(function(){
        $('#coef').removeClass('input-n-active').val('');
    });

    $('.toggle-button').click(function () {
        if ($(this).find('span').hasClass('caret-reversed')) {
            $(this).find('span').removeClass('caret-reversed');
            order = 'DESC';
            drawTable(order, search);
        } else if ($(this).find('span').hasClass('caret')) {
            $(this).find('span').removeClass('caret').addClass('caret caret-reversed');
            order = 'ASC';
            drawTable(order, search);
        } else {
            $(this).find('span').addClass('caret');
            order = 'ASC';
            drawTable(order, search);
        }
    })
    var diseasePanelWidth = ( $(document).width())/2+20;
    $('#disease-panel').css('width', diseasePanelWidth);
    drawTable(order, search);



});

function checkDrug(id) {
    var checkD = false;

    $('.dd').each(function (i) {
        if ($(this).text() == id) {
            checkD = true;
        }
    });
    return checkD;
}

function findDrugByName() {
    search = document.getElementById("search-area").value;
    drawTable(order, search);

}

function clearData() {
    $('#coef').val('30');
    $('#coef').addClass('input-n-active');
    $('input[name="radiobutton"]').prop('checked', false);
    $('#add-drug-error').empty();
}

function addDrug() {
    var drugCoef = document.getElementById("coef").value;
    var drugId = getRadioValue();

    if (drugId == 0) {
        $('#add-drug-error').empty();
        $('#add-drug-error').append('Choose a drug please.')
        return;
    } else if (drugCoef == '' || drugCoef < 0 || drugCoef > 100) {
        $('#add-drug-error').empty();
        $('#add-drug-error').append('Please input a value. (1-100)');
        return;
    }

    if (checkDrug(drugId) == true) {
        $('#add-drug-error').empty();
        $('#add-drug-error').append('The Drug is already in the table');
        return;
    }

    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        type: "Post",
        url: "/hospital/adddrug",
        traditional: true,
        data: JSON.stringify({diseaseId: diseaseId,  drugId: drugId, desc: drugCoef }),

        success: function (responce) {
            $('#myModalDrugs').modal('hide');
            drawTable(order, search);
            clearData();
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.status);
            alert(thrownError);
        }
    });
}

function getRadioValue() {
    var radiobutton = document.getElementsByName("radiobutton");
    var button = 0;
    for (var i = 0; i < radiobutton.length; i++) {
        if (radiobutton[i].checked) {
            button = radiobutton[i].value;
            //alert(radiobutton[i].value);
        }
    }
    return button;
}

function deleteSeleced() {
    var checkboxes = document.getElementsByName("checkbox1");
    var array = [];
    var c = 0;


    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked) {
            array[c] = checkboxes[i].value;
            c++;
        }
    }

    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        type: "DELETE",
        url: "/hospital/deleteselecteddrug",
        traditional: true,
        data: JSON.stringify(array),

        success: function (responce) {
            drawTable(order, search);
        },
        error: function (e) {
            //alert('Error' + e);
        }
    });

};

function drawTable(order, search) {
    var count = 0;
    $.ajax({
        type: "GET",
        url: GET_URL,
        traditional: true,
        dataType: 'json',
        data: {'diseaseId': diseaseId, 'order': order, 'search': search},

        success: function (list) {
            $('#tbody').empty();

            $.each(list, function (i, diseaseDrug) {
                count++;
                $('#tbody').append('<tr>' +
                    '<td><input name="checkbox1" type="checkbox"' +
                    'value="' + diseaseDrug.id + '"></td>' +
                    '<td class="dd" value="' + diseaseDrug.drug.id + '">' + diseaseDrug.drug.id + '</td>' + '<td>' + diseaseDrug.drug.name + '</td>' +
                    '<td>' + diseaseDrug.drug.description + '</td>' +
                    '<td>' + diseaseDrug.drugEfficiencyRatio + '</td></tr>');
            });
            $('#dd-quantity').empty();
            $('#dd-quantity').append('<h5>' + count + ' rows found</h5>');
        },
        error: function (e) {
            alert('Error' + e);
        }
    });
}



