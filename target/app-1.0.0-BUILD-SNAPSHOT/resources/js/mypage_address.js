document.querySelector('.register-button').addEventListener('click', function() {
    document.querySelector('.popup-overlay').style.display = 'flex';
});

document.querySelector('.close-button').addEventListener('click', function() {
    document.querySelector('.popup-overlay').style.display = 'none';
});

function resetForm() {
    document.getElementById('address-form').reset();
}


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