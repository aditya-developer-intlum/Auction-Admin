//main navigation
jQuery(".main_head .navbar-nav li .clickD").click(function() {
    if (jQuery(this).parent('li').parent('ul').hasClass('sub-menu')) {
        jQuery(this).toggleClass("toggled");
    } else if (jQuery(this).hasClass("toggled")) {
        jQuery(this).removeClass('toggled');
    } else if (jQuery('.main_head .navbar-nav li .clickD').hasClass('toggled')) {
        jQuery('.main_head .navbar-nav li .clickD').removeClass('toggled');
        jQuery(this).toggleClass("toggled");
    } else {
        jQuery(this).toggleClass("toggled");
    }
});


//

$('.navbar-toggler').on('click', function() {
    $('.navbar-collapse').toggleClass('show');
});

//Wow js 
new WOW().init();


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



// Time Counter
function getTimeRemaining(endtime) {
    var t = Date.parse(endtime) - Date.parse(new Date());
    var seconds = Math.floor((t / 1000) % 60);
    var minutes = Math.floor((t / 1000 / 60) % 60);
    var hours = Math.floor((t / (1000 * 60 * 60)) % 24);
    var days = Math.floor(t / (1000 * 60 * 60 * 24));
    return {
        'total': t,
        'days': days,
        'hours': hours,
        'minutes': minutes,
        'seconds': seconds
    };
}

function initializeClock(id, endtime) {
    var clock = document.getElementById(id);
    var daysSpan = clock.querySelector('.days');
    var hoursSpan = clock.querySelector('.hours');
    var minutesSpan = clock.querySelector('.minutes');
    var secondsSpan = clock.querySelector('.seconds');

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

var deadline = new Date(Date.parse(new Date()) + 15 * 24 * 60 * 60 * 1000);
var deadline2 = new Date(Date.parse(new Date()) + 2 * 24 * 60 * 60 * 1000);
var deadline3 = new Date(Date.parse(new Date()) + 3 * 24 * 60 * 60 * 1000);
var deadline4 = new Date(Date.parse(new Date()) + 3 * 24 * 60 * 60 * 1000);
initializeClock('clockdiv', deadline);
initializeClock('clockdiv-2', deadline2);




/* Particle js*/
// particlesJS('particles-js2',

//     {
//         "particles": {
//             "number": {
//                 "value": 400,
//                 "density": {
//                     "enable": true,
//                     "value_area": 800
//                 }
//             },
//             "color": {
//                 "value": "#2d78d4"
//             },
//             "shape": {
//                 "type": "circle",
//                 "stroke": {
//                     "width": 0,
//                     "color": "#000000"
//                 },
//                 "polygon": {
//                     "nb_sides": 5
//                 },
//                 "image": {
//                     "src": "img/github.svg",
//                     "width": 100,
//                     "height": 100
//                 }
//             },
//             "opacity": {
//                 "value": 0.5,
//                 "random": false,
//                 "anim": {
//                     "enable": false,
//                     "speed": 1,
//                     "opacity_min": 0.1,
//                     "sync": false
//                 }
//             },
//             "size": {
//                 "value": 10,
//                 "random": true,
//                 "anim": {
//                     "enable": false,
//                     "speed": 40,
//                     "size_min": 0.1,
//                     "sync": false
//                 }
//             },
//             "line_linked": {
//                 "enable": false,
//                 "distance": 200,
//                 "color": "#fff",
//                 "opacity": 0.0,
//                 "width": -1
//             },
//             "move": {
//                 "enable": true,
//                 "speed": 6,
//                 "direction": "none",
//                 "random": false,
//                 "straight": false,
//                 "out_mode": "out",
//                 "attract": {
//                     "enable": false,
//                     "rotateX": 600,
//                     "rotateY": 1200
//                 }
//             }
//         },

//     }

// );