// var korean = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
// function koreachk() {

//     if (korean.test(frm.id.value)) {
//         setMessage('영문과 대소문자만 입력해주세요', frm.id);
//         return false;
//     }
// }

function checkReg(event) {
    const regExp = /[^0-9a-zA-Z]/g; // 숫자와 영문자만 허용
    //   const regExp = /[^ㄱ-ㅎ|가-힣]/g; // 한글만 허용
    const del = event.target;
    if (regExp.test(del.value)) {
        del.value = del.value.replace(regExp, '');
    }
};

function togglePassword() {
    const passwordInput = document.getElementById('password');
    const passwordIcon = document.querySelector('.toggle-password');
    
    if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        passwordIcon.textContent = '🙈';
    } else {
        passwordInput.type = 'password';
        passwordIcon.textContent = '👁️';
    }
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