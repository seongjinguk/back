const banners = document.querySelectorAll('.main-banner img');
const bannerMessages = [
    document.querySelector('.banner-message1'),
    document.querySelector('.banner-message2'),
    document.querySelector('.banner-message3'),
    document.querySelector('.banner-message4')
];
let currentBannerIndex = 0;

function showNextBanner() {
    banners[currentBannerIndex].classList.remove('active');
    banners[currentBannerIndex].classList.add('prev');
    bannerMessages[currentBannerIndex].classList.remove('active');

    currentBannerIndex = (currentBannerIndex + 1) % banners.length;

    banners[currentBannerIndex].classList.remove('next');
    banners[currentBannerIndex].classList.add('active');
    setTimeout(() => {
        bannerMessages[currentBannerIndex].classList.add('active');
    }, 250);

    const nextBannerIndex = (currentBannerIndex + 1) % banners.length;
    banners[nextBannerIndex].classList.remove('prev');
    banners[nextBannerIndex].classList.add('next');
}

function showPrevBanner() {
    banners[currentBannerIndex].classList.remove('active');
    banners[currentBannerIndex].classList.add('next');
    bannerMessages[currentBannerIndex].classList.remove('active');

    currentBannerIndex = (currentBannerIndex - 1 + banners.length) % banners.length;

    banners[currentBannerIndex].classList.remove('prev');
    banners[currentBannerIndex].classList.add('active');
    setTimeout(() => {
        bannerMessages[currentBannerIndex].classList.add('active');
    }, 250);

    const prevBannerIndex = (currentBannerIndex - 1 + banners.length) % banners.length;
    banners[prevBannerIndex].classList.remove('next');
    banners[prevBannerIndex].classList.add('prev');
}

document.querySelector('.prev-button').addEventListener('click', showPrevBanner);
document.querySelector('.next-button').addEventListener('click', showNextBanner);


// setInterval(showNextBanner, 7500);


var swiper = new Swiper(".mySwiper", {
    slidesPerView: 6,
    spaceBetween: 30,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    breakpoints: {
        200: {
            slidesPerView: 1,
            spaceBetween: 1,
        },
        480: {
            slidesPerView: 2,
            spaceBetween: 5,
        },
        768: {
            slidesPerView: 3,
            spaceBetween: 10,
        },
        1024: {
            slidesPerView: 4,
            spaceBetween: 15,
        },
        1200: {
            slidesPerView: 5,
            spaceBetween: 20,
        },
        1400: {
            slidesPerView: 6,
            spaceBetween: 30,
        }
    },
});


document.addEventListener('DOMContentLoaded', () => {
    const quickCartButtons = document.querySelectorAll('.quick_cart');
    const popupLayer = document.getElementById('popup-layer');
    const closeBtn = document.querySelector('.popup-header .close');

    quickCartButtons.forEach(button => {
        button.addEventListener('click', () => {
            popupLayer.style.display = 'block';
        });
    });

    closeBtn.addEventListener('click', () => {
        popupLayer.style.display = 'none';
    });

    window.addEventListener('click', (event) => {
        if (event.target == popupLayer) {
            popupLayer.style.display = 'none';
        }
    });
});




