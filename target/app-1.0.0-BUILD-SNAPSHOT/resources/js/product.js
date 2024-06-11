//
// //컨텐츠박스 스크립트
// $(document).ready(function(){
// let box_count = $('.box').length;
// let box_w = $('.box').outerWidth();
// for(let i=0; i<box_count; i++) {
//     $('.box').eq(i).css({left: box_w * i})
// }
//
// $(window).resize(function(){
//
//     box_w = $('.box').outerWidth();
//
//     for(let i=0; i<box_count; i++) {
//         $('.box').eq((i+bang)%box_count).css({left: box_w * i})
//     }
//
// });
//
//
// let bang = 0;
// $('.slide_btn_R').click(function(){
//
//     btn_init();
//
//     $('.box').animate({
//         left: `-=${box_w}`
//     }, 500, 'linear')
//
//     $('.box').eq(bang % box_count).animate({
//         left: box_w * (box_count - 1)
//     }, 0, 'linear')
//
//     bang+=1;
//
//     swiper_active()
// })
// $('.slide_btn_L').click(function(){
//
//     btn_init();
//
//     $('.box').eq((bang - 1) % box_count).animate({
//         left: -box_w
//     }, 0, 'linear')
//
//     $('.box').animate({
//         left: `+=${box_w}`
//     }, 500, 'linear')
//
//     bang-=1;
//
//     swiper_active()
// })
// function btn_init() {
//     $('.slide_btn').css({pointerEvents: 'none'})
//     setTimeout(function(){
//         $('.slide_btn').css({pointerEvents: 'auto'})
//     }, 500)
// }
//
// function swiper_active() {
//     $('.swiper_img').removeClass('active2');
//     $('.swiper_img').eq(bang % box_count).addClass('active2');
//     }
//
//     $('.swiper_img').click(function(){
//
//         let gap = $(this).index() - $('.active2').index();
//
//         if(gap > 0) {
//             for(let i=0; i<gap; i++) {
//                 $('.slide_btn_R').trigger('click')
//             }
//         }
//
//
//         else if(gap < 0) {
//             for(let i=0; i<gap*-1; i++) {
//                 $('.slide_btn_L').trigger('click')
//             }
//
//             }
//         })
//
// })
//
// //추천상품 슬라이드
// $(document).ready(function(){
//     let box_w = $('.box2').outerWidth();
//     let box_count = $('.box2').length;
//
//     for(let i=0; i<box_count; i++) {
//         $('.box2').eq(i).css({left: box_w * i})
//     }
//
//     let bang = 0;
//     $('.slide_btn_R2').click(function(){
//         $('.box2').animate({
//             left: `-=${box_w}`
//         }, 1000)
//
//         $('.box2').eq(bang % box_count).animate({
//             left: box_w * (box_count - 1)
//         }, 0)
//
//         bang+=1;
//     })
//     $('.slide_btn_L2').click(function(){
//         $('.box2').eq((bang - 1) % box_count).animate({
//             left: -box_w
//         }, 0)
//
//         $('.box2').animate({
//             left: `+=${box_w}`
//         }, 1000)
//
//         bang-=1;
//     })
//     function btn_init() {
//         $('.slide_btn2').css({pointerEvents: 'none'})
//         setTimeout(function(){
//             $('.slide_btn2').css({pointerEvents: 'auto'})
//         }, 500)
//     }
// })
//
// //최근 본 상품 슬라이드
// $(document).ready(function(){
//     let box_w = $('.box3').outerWidth();
//     let box_count = $('.box3').length;
//
//     for(let i=0; i<box_count; i++) {
//         $('.box3').eq(i).css({left: box_w * i})
//     }
//
//     let bang = 0;
//     $('.slide_btn_R2').click(function(){
//         $('.box3').animate({
//             left: `-=${box_w}`
//         }, 1000)
//
//         $('.box3').eq(bang % box_count).animate({
//             left: box_w * (box_count - 1)
//         }, 0)
//
//         bang+=1;
//     })
//     $('.slide_btn_L2').click(function(){
//         $('.box3').eq((bang - 1) % box_count).animate({
//             left: -box_w
//         }, 0)
//
//         $('.box3').animate({
//             left: `+=${box_w}`
//         }, 1000)
//
//         bang-=1;
//     })
//     function btn_init() {
//         $('.slide_btn2').css({pointerEvents: 'none'})
//         setTimeout(function(){
//             $('.slide_btn2').css({pointerEvents: 'auto'})
//         }, 500)
//     }
// })
// //오리진 아이콘 슬라이드
// $(document).ready(function(){
//     let box_w = $('.box4').outerWidth();
//     let box_count = $('.box4').length;
//
//     for(let i=0; i<box_count; i++) {
//         $('.box4').eq(i).css({left: box_w * i})
//     }
//
//     let bang = 0;
//     $('.slide_btn_R2').click(function(){
//         $('.box4').animate({
//             left: `-=${box_w}`
//         }, 1000)
//
//         $('.box4').eq(bang % box_count).animate({
//             left: box_w * (box_count - 1)
//         }, 0)
//
//         bang+=1;
//     })
//     $('.slide_btn_L2').click(function(){
//         $('.box4').eq((bang - 1) % box_count).animate({
//             left: -box_w
//         }, 0)
//
//         $('.box4').animate({
//             left: `+=${box_w}`
//         }, 1000)
//
//         bang-=1;
//     })
//     function btn_init() {
//         $('.slide_btn2').css({pointerEvents: 'none'})
//         setTimeout(function(){
//             $('.slide_btn2').css({pointerEvents: 'auto'})
//         }, 500)
//     }
// })
//
//
// //리뷰 무한스크롤
// $(document).ready(function(){
//
//     // 무한스크롤 용도
//     for(let i=0; i<1; i++) {
//         $('.review_data_area').append(`                <div class="review_data">
//         <div class="review_data_L">
//             <div class="review_score_section">
//                 <div class="review_score_container">
//                     <img src="./img/star_img.png" alt="">
//                     <span>아주좋아요</span>
//                     <span class="review_data_date">2024.05.24</span>
//                 </div>
//                 <div class="user_review_txt">
//                     <span>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
//                         Magni temporibus consequuntur porro distinctio ea aliquid
//                         eos quod nam labore laborum, numquam at autem illo.
//                         Tempore magni earum rem pariatur qui.
//                         lo</span>
//                 </div>
//                 <div class="user_review_img">
//                     <img src="./img/review1.jpg" alt="">
//                 </div>
//             </div>
//         </div>
//         <div class="review_data_R">
//             <div class="review_user_data">
//                 <div class="review_detail_data review_id">id<span> 님의 리뷰입니다</span></div>
//                 <div class="review_detail_data review_gender"><span>성별 : </span> 남성 </div>
//                 <div class="review_detail_data review_age"><span>연령 : </span> 30대</div>
//                 <div class="review_detail_data review_size"><span>사이즈 : </span>적당해요</div>
//                 <div class="review_detail_data review_size_detail"><span>사이즈(mm) : </span> 270</div>
//             </div>
//         </div>
//     </div>`)
//     }
//     let f_o_top = $('.footer').offset().top; // 무한스크롤 방법2 에서 사용
//     let count = 1; // 무한스크롤 몇번 될지 정하는 용도
//     $(window).scroll(function(){
//         let s_top = $(window).scrollTop();
//
//         if(count <= 6) {
//             let s_bot = s_top + $(window).height();
//             if(f_o_top + 100 <= s_bot) {
//                 for(let i=0; i<1; i++) {
//                     $('.review_data_area').append(`<div class="review_data">
//                     <div class="review_data_L">
//                         <div class="review_score_section">
//                             <div class="review_score_container">
//                                 <img src="./img/star_img.png" alt="">
//                                 <span>아주좋아요</span>
//                                 <span class="review_data_date">2024.05.24</span>
//                             </div>
//                             <div class="user_review_txt">
//                                 <span>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
//                                     Magni temporibus consequuntur porro distinctio ea aliquid
//                                     eos quod nam labore laborum, numquam at autem illo.
//                                     Tempore magni earum rem pariatur qui.
//                                     lo</span>
//                             </div>
//                             <div class="user_review_img">
//                                 <img src="./img/review1.jpg" alt="">
//                             </div>
//                         </div>
//                     </div>
//                     <div class="review_data_R">
//                         <div class="review_user_data">
//                             <div class="review_detail_data review_id">id<span> 님의 리뷰입니다</span></div>
//                             <div class="review_detail_data review_gender"><span>성별 : </span> 남성 </div>
//                             <div class="review_detail_data review_age"><span>연령 : </span> 30대</div>
//                             <div class="review_detail_data review_size"><span>사이즈 : </span>적당해요</div>
//                             <div class="review_detail_data review_size_detail"><span>사이즈(mm) : </span> 270</div>
//                         </div>
//                     </div>
//                 </div>`)
//                 }
//                 count+=1;
//                 f_o_top = $('.footer').offset().top;
//             }
//         }
//
//     })
//
//
// })
//
//
// //게이지 리뷰 갯수값 받고 게이지바 늘리기
// $(document).ready(function() {
//     var rv_ct5 = parseInt($('#review_count5').text().trim());
//     var rv_ct4 = parseInt($('#review_count4').text().trim());
//     var rv_ct3 = parseInt($('#review_count3').text().trim());
//     var rv_ct2 = parseInt($('#review_count2').text().trim());
//     var rv_ct1 = parseInt($('#review_count1').text().trim());
//
//
//     var newWidth5 = (rv_ct5 * 0.3);
//     var newWidth4 = (rv_ct4 * 0.3);
//     var newWidth3 = (rv_ct3 * 0.3);
//     var newWidth2 = (rv_ct2 * 0.3);
//     var newWidth1 = (rv_ct1 * 0.3);
//
//
//     $('.gauge_5').css('width', newWidth5 + '%');
//     $('.gauge_4').css('width', newWidth4 + '%');
//     $('.gauge_3').css('width', newWidth3 + '%');
//     $('.gauge_2').css('width', newWidth2 + '%');
//     $('.gauge_1').css('width', newWidth1 + '%');
//
// });
//
