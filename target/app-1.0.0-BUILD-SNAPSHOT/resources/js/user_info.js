// 레이어팝업 부분
document.addEventListener('DOMContentLoaded', function () {
    const openPopupButton = document.getElementById('openPopup');
    const popupOverlay = document.getElementById('popupOverlay');
    const closePopupButton = document.getElementById('closePopup');

    openPopupButton.addEventListener('click', function () {
        popupOverlay.style.display = 'flex';
    });

    closePopupButton.addEventListener('click', function () {
        popupOverlay.style.display = 'none';
    });

    popupOverlay.addEventListener('click', function (event) {
        if (event.target === popupOverlay) {
            popupOverlay.style.display = 'none';
        }
    });
});


function toggleMenu() {
    const menu = document.getElementById('sideMenu');
    const overlay = document.getElementById('overlay');
    const hamburger = document.querySelector('.hamburger');
    menu.classList.toggle('active');
    overlay.classList.toggle('active');
    hamburger.classList.toggle('active');
}

function closeMenu() {
    const menu = document.getElementById('sideMenu');
    const overlay = document.getElementById('overlay');
    const hamburger = document.querySelector('.hamburger');
    menu.classList.remove('active');
    overlay.classList.remove('active');
    hamburger.classList.remove('active');
}