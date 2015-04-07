$('#calculate').click(function() {
    special();
    var $type = $('#parkingType option:selected').text();
    var $hours = $('#time').val();
    var $money = 0;
    if($hours == '') {
        alert('You forgot to choose an amount of time.');
        return;
    }
    switch($type) {
        case 'Valet Parking':
            $money = valet($hours);
            break;
        case 'Short time Parking':
            $money = short($hours);
            break;
        case 'Economy Parking':
            $money = eco($hours);
            break;
    };
    $money += special();
    $('#money').text($money.toFixed(2));
    $('#result').show();
});

function valet($hours) {
    var $money = 0;
    if ($hours <= 0) {
    } else if ($hours <= 5) {
        $money = 12;
    } else if ($hours <= 24) {
        $money = 18;
    } else if ($hours <= 48) {
        $money = 36;
    } else if ($hours <= 72) {
        $money = 54;
    } else {
        $money = 126;
    };
    return $money;
};
            
function short($hours) {
    var $money = 0;
    if ($hours <= 0) {
    } else if ($hours <= 0.5) {
        $money = 1;
    } else if ($hours <= 1) {
        $money = 2;
    } else if ($hours < 12) {
        $money = $hours * 2;
    } else if ($hours <= 24) {
        $money = 24;
    } else {
        $money = 30;
    };
    return $money;
};

function eco($hours) {
    var $money = 0;
    if ($hours <= 0) {
    } else if ($hours < 5) {
        $money = $hours * 2;
    } else if ($hours <= 24) {
        $money = 9;
    } else {
        $money = 11;
    };
    return $money;
};

function special() {
    $money = 0;
    if ($('#checkbox1').is(':checked')) {
        $money += 30;
    }
    if ($('#checkbox2').is(':checked')) {
        $money += 13;
    }
    if ($('#checkbox3').is(':checked')) {
        $money += 4.20;
    }
    return $money;    
}