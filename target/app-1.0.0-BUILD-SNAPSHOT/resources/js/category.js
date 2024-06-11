
$(document).ready(function(){

    // // 무한스크롤 용도
    // for(let i=0; i<1; i++) {
    //     $('.content_area2').append(`                    <c:forEach var="CategoryDto" items="${list}">
    //     <a href="<c:url value='/product/read?p_seqno=${CategoryDto.p_seqno}&p_name=${CategoryDto.p_name}&p_price=${CategoryDto.p_price}'/>" id="productLink">
    //         <div class="cate_item_box">
    //             <div class="item_img">
    //                 <img src="resources/img/1.jpg" alt="">
    //             </div>
    //             <div class="item_name" >${CategoryDto.p_name}</div>
    //             <div class="item_price" >${CategoryDto.p_price}</div>
    //             <div class="item_color">
    //                 <div class="color_box"></div>
    //             </div>
    //         </div>
    //     </a>
    // </c:forEach>`)
 
    // }
    let f_o_top = $('.footer').offset().top; // 무한스크롤 방법2 에서 사용
    let count = 1; // 무한스크롤 몇번 될지 정하는 용도
    $(window).scroll(function(){
        let s_top = $(window).scrollTop();

        if(count <= 5) {
            let s_bot = s_top + $(window).height();  
            if(f_o_top + 100 <= s_bot) {
                for(let i=0; i<1; i++) {
                    $('.content_area2').append(`                    <c:forEach var="CategoryDto" items="${list}">
                    <a href="<c:url value='/product/read?p_seqno=${CategoryDto.p_seqno}&p_name=${CategoryDto.p_name}&p_price=${CategoryDto.p_price}'/>" id="productLink">
                        <div class="cate_item_box">
                            <div class="item_img">
                                <img src="resources/img/1.jpg" alt="">
                            </div>
                            <div class="item_name" >${CategoryDto.p_name}</div>
                            <div class="item_price" >${CategoryDto.p_price}</div>
                            <div class="item_color">
                                <div class="color_box"></div>
                            </div>
                        </div>
                    </a>
                </c:forEach>`) 
                }
                count+=1;
                f_o_top = $('.footer').offset().top;
            }
        }

    })
    
    
})





