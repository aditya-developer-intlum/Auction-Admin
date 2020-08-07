//main navigation
jQuery(".navbar-nav li .clickD").click(function() {
    if (jQuery(this).parent('li').parent('ul').hasClass('sub-menu')) {
        jQuery(this).toggleClass("toggled");
    } else if (jQuery(this).hasClass("toggled")) {
        jQuery(this).removeClass('toggled');
    } else if (jQuery('.navbar-nav li .clickD').hasClass('toggled')) {
        jQuery('.navbar-nav li .clickD').removeClass('toggled');
        jQuery(this).toggleClass("toggled");
    } else {
        jQuery(this).toggleClass("toggled");
    }
});



// After login Nav bar 2
$('._navbar2-btn').click(function(event) {
    event.stopPropagation();
    $('._navbar-2').toggleClass('_open');
    $('.menu-item-has-children .clickD ').removeClass('toggled');
});
$('._navbar-2').click(function(event) {
    event.stopPropagation();
    $('._navbar-2').addClass('_open');
});
$(document).click(function() {
    $('._navbar-2').removeClass('_open');
});


// Toggle menu

$('.navbar-toggler').on('click', function() {
    $('.navbar-collapse').toggleClass('show');
    $(".navbar-nav li .clickD").removeClass('toggled');
});

//Hamburger menu

$('.navbar-toggler-icon').on('click', function() {
    $(this).toggleClass('change');
    $('body').toggleClass('_overflow-hidden');
});

//Wow js 
new WOW().init();

// Back to top

$(document).ready(function() {

    $(window).scroll(function() {
        if ($(this).scrollTop() >= 50) {
            $('._backToTop').fadeIn(200);
        } else {
            $('._backToTop').fadeOut(200);
        }
    });
    $('._backToTop').click(function() {
        $('body,html').animate({
            scrollTop: 0
        }, 500);
    });

});

// $(document).ready(function() {
//     var tBtn = $('._backToTop')
//     if ($(window).scrollTop() > 300) {
//         tBtn.addClass('show');
//     } else {
//         tBtn.removeClass('show');
//     }

//     tBtn.on('click', function(e) {
//         e.preventDefault();
//         $('html, body').animate({ scrollTop: 0 }, '300');
//     });

// });


/// Change popup
// $(document).ready(function() {
//     $("._h-info").on('click', function() {
//         $(this).addClass('_open').parents('tr').removeClass('_close').siblings().addClass('_close');
//     });
//     $("._h-infoCont").on('click', function() {
//         $(this).parents('._h-info').addClass('_open');
//     });
// });


//
$(document).ready(function() {
    $("._adSide-btn").on('click', function() {
        $(this).toggleClass('change');
        $('._adSide-nav').toggleClass('_slideLeft');
        $('._ad-main-cont').toggleClass('_adSide-nav-minimize');
        $('._ad-submenu').slideUp(500);
    });
});

//Dashboard Pannel
$(document).ready(function() {
    $("._ad-has-child").click(function(event) {
        $(this).children('._ad-submenu').slideDown(500);
        $(this).siblings().children('._ad-submenu').slideUp(500);
        $('._adSide-nav').removeClass('_slideLeft');
        $('._ad-main-cont').removeClass('_adSide-nav-minimize');
    });

    $("._ad-has-child > a").click(function(event) {
        event.preventDefault();
    });

});




// Win Slider
var owl = $('#_winSlider');
owl.owlCarousel({
    loop: true,
    nav: true,
    navText: ['<img src="images/left-arrow.png" class="">', '<img src="images/right-arrow.png" class="">'],
    margin: 30,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 3
        },
        992: {
            items: 4
        },
        1200: {
            items: 5
        },
        1600: {
            items: 7,
            slideBy: 1
        }
    }
});




/* Min times */
/*function startTimer(duration, display) {
    var timer = duration,
        minutes, seconds;
    setInterval(function() {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
}

window.onload = function() {
    var leftMinutes = 60 * $("#time").data('value'),
        display = document.querySelector('#time');
    startTimer(leftMinutes, display);

};




// Start Current Time Clock

var $dOut = $('#date'),
    $hOut = $('#hours'),
    $mOut = $('#minutes'),
    $sOut = $('#seconds'),
    $msOut = $('#miliseconds'),
    $ampmOut = $('#ampm');
// var months = [
//     'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'
// ];

// var days = [
//     'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'
// ];

function update() {
    var date = new Date();

    var ampm = date.getHours() < 12 ?
        'AM' :
        'PM';

    var hours = date.getHours() == 0 ?
        12 :
        date.getHours() > 12 ?
        date.getHours() - 12 :
        date.getHours();

    var minutes = date.getMinutes() < 10 ?
        '0' + date.getMinutes() :
        date.getMinutes();

    var seconds = date.getSeconds() < 10 ?
        '0' + date.getSeconds() :
        date.getSeconds();

    var miliseconds = date.getMilliseconds() < 10 ?
        '0' + date.getMilliseconds() :
        date.getMilliseconds();



    // var dayOfWeek = days[date.getDay()];
    // var month = months[date.getMonth()];
    // var day = date.getDate();
    // var year = date.getFullYear();

    // var dateString = dayOfWeek + ', ' + month + ' ' + day + ', ' + year;

    // $dOut.text(dateString);
    $hOut.text(hours);
    $mOut.text(minutes);
    $sOut.text(seconds);
    $msOut.text(miliseconds);
    $ampmOut.text(ampm);
}

update();
window.setInterval(update, 1);

//End Current Time Clock



// Time Counter
function getTimeRemaining(endtime) {
    var t = Date.parse(endtime) - Date.parse(new Date());
    var miliseconds = Math.floor((t / 1000));
    var seconds = Math.floor((t / 1000) % 60);
    var minutes = Math.floor((t / 1000 / 60) % 60);
    var hours = Math.floor((t / (1000 * 60 * 60)) % 24);
    var days = Math.floor(t / (1000 * 60 * 60 * 24));
    return {
        'total': t,
        'days': days,
        'hours': hours,
        'minutes': minutes,
        'seconds': seconds,
        'milisec': miliseconds
    };
}

function initializeClock(id, endtime) {
    var clock = document.getElementById(id);
    var daysSpan = clock.querySelector('.days');
    var hoursSpan = clock.querySelector('.hours');
    var minutesSpan = clock.querySelector('.minutes');
    var secondsSpan = clock.querySelector('.seconds');
    var miliSpan = clock.querySelector('.milisec');

    function updateClock() {
        var t = getTimeRemaining(endtime);

        daysSpan.innerHTML = t.days;
        hoursSpan.innerHTML = ('0' + t.hours).slice(-2);
        minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
        secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

        if (t.total <= 0) {
            clearInterval(timeinterval);
        }
    }

    updateClock();
    var timeinterval = setInterval(updateClock, 1000);
}

var deadline = new Date(Date.parse(new Date()) + 15 * 24 * 40 * 60 * 1000);
var deadline2 = new Date(Date.parse(new Date()) + 2 * 24 * 60 * 60 * 1000);
var deadline3 = new Date(Date.parse(new Date()) + 3 * 24 * 60 * 60 * 1000);
var deadline4 = new Date(Date.parse(new Date()) + 3 * 24 * 60 * 60 * 1000);
initializeClock('clockdiv', deadline);
initializeClock('clockdiv-2', deadline2);
*/



// Login forms display

$('#mobLogin').on("click", function(e) {
    e.preventDefault();
    $('#loginMobile').removeClass('_pos-right')
    $('#loginGenral').addClass('_pos-left');
});

$('#forgotPassword-btn').on("click", function() {
    // e.preventDefault();
    $('#forgotPassword').removeClass('_pos-right');
    $('#loginGenral').addClass('_pos-left');
});

$('#getOtp-btn').on("click", function(e) {
    e.preventDefault();
    $('#otpForm').removeClass('_pos-right');
    $('#loginMobile').addClass('_pos-left');
});


// Login forms display

$('#mobReg-btn').on("click", function(e) {
    e.preventDefault();
    $('#registerMobile').removeClass('_pos-right')
    $('#register-Genral').addClass('_pos-left');
});



$('#otpForm-register-btn').on("click", function(e) {
    e.preventDefault();
    $('#otpForm-register').removeClass('_pos-right');
    $('#registerMobile').addClass('_pos-left');
});