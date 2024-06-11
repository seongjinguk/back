const messages = document.querySelectorAll('.headera .message');
let currentIndex = 0;

function showNextMessage() {
    messages[currentIndex].classList.remove('active');
    messages[currentIndex].classList.add('prev');

    currentIndex = (currentIndex + 1) % messages.length;

    messages[currentIndex].classList.remove('next');
    messages[currentIndex].classList.add('active');

    const nextIndex = (currentIndex + 1) % messages.length;
    messages[nextIndex].classList.remove('prev');
    messages[nextIndex].classList.add('next');
}

setInterval(showNextMessage, 5000);


const checkAll = document.querySelector("[name=checkAll]");
const items = [...document.querySelectorAll("[name=checkbox]")];

// 아이템 선택 이벤트
// items.forEach(async (item) => {
//   item.onchange = (e) => {
//     checkAll.checked = items.every((item) => item.checked);
//   }
// });

// 전체 선택 이벤트
checkAll.onchange = (e) => {
  items.forEach(async (item) => item.checked = e.target.checked)
};

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