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
const items = [...document.querySelectorAll("[name=items]")];

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








let el_qty = document.getElementById('txt_qty');
let el_ip = document.getElementById('item_price');
let el_fp = document.getElementById('fin_price');
let dc_pr = document.getElementById('discount_price');
let ls_pr = document.getElementById('total_price2');
function plus() {
  let curr_qty = +(el_qty.value) + 1;
  el_qty.value = curr_qty;

  el_fp.innerText = (+(el_ip.innerText.replace(",", "")) * curr_qty).toLocaleString("ko")
  ls_pr.innerText = (+(el_ip.innerText.replace(",", "")) * curr_qty).toLocaleString("ko")

}

function minus() {

  if (el_qty.value <= 0) {
    alert("수량을 한개이상 선택해주세요")
  }
  else {
    let curr_qty = +(el_qty.value) - 1;
    el_qty.value = curr_qty;

    el_fp.innerText = (+(el_ip.innerText.replace(",", "")) * curr_qty).toLocaleString("ko")
    ls_pr.innerText = (+(el_ip.innerText.replace(",", "")) * curr_qty).toLocaleString("ko")
  }

}



