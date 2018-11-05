function changeRes() {
    var units = parseInt($('#units').val()) || 0;
    var floors = parseInt($('#floors').val()) || 0;
    var basements = parseInt($('#basements').val()) || 0;
    var rdoSTD = $('#standard').is(':checked');
    var rdoPRE = $('#premium').is(':checked');
    var rdoEX = $('#excelium').is(':checked');
    var floors20 = Math.ceil(floors / 20);
    var cages101 = Math.ceil((units / floors) / 6);
    var cages = document.getElementById("cages").value = Math.ceil(((units / floors) / 6) * floors20) || 0;

    if (rdoSTD == true) {
        var total = document.getElementById("total").value = '$ ' + ((cages * 7565) * 1.10).toFixed(2);
    } else if (rdoPRE == true) {
        var total = document.getElementById('total').value = '$ ' + ((cages * 12345) * 1.13).toFixed(2);
    } else if (rdoEX == true) {
        var total = document.getElementById('total').value = '$ ' + ((cages * 15400) * 1.16).toFixed(2);
    } else {
        $('#total').val('');
        $('#cages').val('');
    }
};

function changeCom() {
    var shops = parseInt($('#comshops').val()) || 0;
    var floors = parseInt($('#comfloors').val()) || 0;
    var basements = parseInt($('#combasements').val()) || 0;
    var parkings = parseInt($('#compark').val()) || 0;
    var cages = parseInt($('#comcages').val()) || 0;
    var rdoSTD = $('#comSTD').is(':checked');
    var rdoPRE = $('#comPRE').is(':checked');
    var rdoEX = $('#comEX').is(':checked');
    if (rdoSTD == true) {
        var total = document.getElementById("comtotal").value = '$ ' + ((cages * 7565) * 1.10).toFixed(2);
    } else if (rdoPRE == true) {
        var total = document.getElementById('comtotal').value = '$ ' + ((cages * 12345) * 1.13).toFixed(2);
    } else if (rdoEX == true) {
        var total = document.getElementById('comtotal').value = '$ ' + ((cages * 15400) * 1.16).toFixed(2);
    } else {
        $('#total').val('');
        $('#cages').val('');
    }
};

function changeCor() {
    var companies = parseInt($('#corCompanies').val()) || 0;
    var floors = parseInt($('#corFloors').val()) || 0;
    var basements = parseInt($('#corBasements').val()) || 0;
    var parkings = parseInt($('#corParkings').val()) || 0;
    var occupants = parseInt($('#corOccupants').val()) || 0;
    var rdoSTD = $('#corSTD').is(':checked');
    var rdoPRE = $('#corPRE').is(':checked');
    var rdoEX = $('#corEX').is(':checked');
    var elevators = Math.ceil((occupants * (floors + basements)) / 1000);
    var nElevators = Math.ceil((floors + basements) / 20);
    var bCages = Math.ceil((elevators / nElevators));
    var cages = document.getElementById("corCages").value = Math.ceil(bCages * nElevators);
    if (rdoSTD == true) {
        var total = document.getElementById("corTotal").value = '$ ' + ((cages * 7565) * 1.10).toFixed(2);
    } else if (rdoPRE == true) {
        var total = document.getElementById('corTotal').value = '$ ' + ((cages * 12345) * 1.13).toFixed(2);
    } else if (rdoEX == true) {
        var total = document.getElementById('corTotal').value = '$ ' + ((cages * 15400) * 1.16).toFixed(2);
    } else {
        $('#total').val('');
        $('#cages').val('');
    }
};

function changeHyb() {
    var shops = parseInt($('#hybShops').val()) || 0;
    var floors = parseInt($('#hybFloors').val()) || 0;
    var basements = parseInt($('#hybBasements').val()) || 0;
    var parkings = parseInt($('#hybPark').val()) || 0;
    var occupants = parseInt($('#hybOccupants').val()) || 0;
    var hours = parseInt($('#hybHours').val()) || 0;
    if (hours > 24) {
        alert('***The maximum number of hours per day is 24. Please try again.***');
    }
    var rdoSTD = $('#hybSTD').is(':checked');
    var rdoPRE = $('#hybPRE').is(':checked');
    var rdoEX = $('#hybEX').is(':checked');
    var elevators = Math.ceil((occupants * (floors + basements)) / 1000);
    var nElevators = Math.ceil((floors + basements) / 20);
    var bCages = Math.ceil((elevators / nElevators));
    var cages = document.getElementById("hybCages").value = Math.ceil(bCages * nElevators) || 0;
    if (rdoSTD == true) {
        var total = document.getElementById("hybTotal").value = '$ ' + ((cages * 7565) * 1.10).toFixed(2);
    } else if (rdoPRE == true) {
        var total = document.getElementById('hybTotal').value = '$ ' + ((cages * 12345) * 1.13).toFixed(2);
    } else if (rdoEX == true) {
        var total = document.getElementById('hybTotal').value = '$ ' + ((cages * 15400) * 1.16).toFixed(2);
    } else {
        $('#total').val('');
        $('#cages').val('');
    }
};