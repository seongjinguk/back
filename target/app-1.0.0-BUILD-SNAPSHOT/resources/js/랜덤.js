const TRAVEL_LIST = [
    [
        {item_no: 0, src: "img/travel/tokyo.jpg", title: '동경/아사쿠사 or 디즈니 3일', airplane: '대한항공', where: '도쿄', price: '300,000원~'}, 
        {item_no: 1, src: "img/travel/osaka.jpg", title: '오사카 3박 4일', airplane: '대한항공', where: '오사카', price: '250,000원~'}, 
        {item_no: 2, src: "img/travel/fukoka.jpeg", title: '후쿠오카 3박 4일', airplane: '아시아나', where: '후쿠오카', price: '220,000원~'}, 
        {item_no: 3, src: "img/travel/saporo.jpg", title: '삿포로 눈축제 4박 5일', airplane: '대한항공', where: '삿포로', price: '550,000원~'}, 
        {item_no: 4, src: "img/travel/nara.jpg", title: '나라 일본문화제 투어 3박 4일', airplane: '아시아나', where: '나라', price: '380,000원~'}, 
        {item_no: 5, src: "img/travel/okinawa.jpg", title: '오카나와 5박 6일', airplane: '대한항공', where: '오키나와', price: '800,000원~'}, 
        {item_no: 6, src: "img/travel/sendai.jpg", title: '센다이 4박 5일', airplane: '티웨이 항공', where: '센다이', price: '500,000원~'}, 
        {item_no: 7, src: "img/travel/nagoya.jpg", title: '나고야 2박 3일', airplane: '대한항공', where: '나고야', price: '300,000원~'},      {item_no: 8, src:  "img/travel/sakura.jpg", title: '벚꽃투어/후지산 투어 5박 6일', airplane: '대한항공', where: '도쿄/후지산', price: '1,100,000원~'}, 
    ],
    [
        {item_no: 0, src: "img/travel/danang.jpg", title: '베트남 다낭 5박 6일', airplane: '제주항공', where: '다낭', price: '420,000원~'}, 
        {item_no: 1, src: "img/travel/hanoi.jpg", title: '하노이 4박 6일', airplane: '대한항공', where: '하노이', price: '350,000원~'}, 
        {item_no: 2, src: "img/travel/borakai.jpg", title: '보라카이 호캉스 3박 4일', airplane: '아시아나', where: '보라카이', price: '620,000원~'}, 
        {item_no: 3, src:  "img/travel/cebu.jpg", title: '세부 휴양 패키지', airplane: '대한항공', where: '세부', price: '550,000원~'}, 
        {item_no: 4, src:"img/travel/taiwan.png", title: '타이완 4박 5일 패키지', airplane: '아시아나', where: '타이완', price: '380,000원~'}, 
        {item_no: 5, src:"img/travel/malaysia.jpg", title: '말레이시아 쿠알라룸프르 5박6일 자유여행', airplane: '대한항공', where: '말레이시아', price: '800,000원~'}, 
        {item_no: 6, src: "img/travel/raos.jpg", title: '라오스 배낭여행 한달 ', airplane: '티웨이 항공', where: '라오스', price: '1,500,000원~'}, 
        {item_no: 7, src: "img/travel/india.jpg", title: '인도 뉴델리 7박 8일', airplane: '대한항공', where: '인도', price: '1,300,000원~'},      
        {item_no: 8, src:   "img/travel/singapore.jpg", title: '싱가포르 도심 투어 4박 5일', airplane: '대한항공', where: '싱가폴', price: '1,800,000원~'}, 
        ],
        [
        {item_no: 0, src: "img/travel/london.jpg", title: '런던투어/토트넘 핫스퍼 경기 포함', airplane: '대한항공', where: '런던', price: '5,520,000원~'}, 
        {item_no: 1, src: "img/travel/paris.jpg", title: '파리 한달살기', airplane: '대한항공', where: '파리', price: '7,350,000원~'}, 
        {item_no: 2, src: "img/travel/italy.jpg", title: '이탈리아 4개도시(로마, 밀라노, 피렌체, 토리노) 한달 패키지', airplane: '아시아나', where: '이탈리아', price: '7,620,000원~'}, 
        {item_no: 3, src: "img/travel/spain.jpg", title: '스페인 3개도시 (마드리드, 세비야, 바르셀로나)투어', airplane: '대한항공', where: '스페인', price: '7,550,000원~'}, 
        {item_no: 4, src:"img/travel/northeu.jpg", title: '스칸다비아 반도(스웨덴, 핀란드, 노르웨이)투어', airplane: '아시아나', where: '북유럽', price: '9,380,000원~'}, 
        {item_no: 5, src:"img/travel/koka.jpg", title: '코카서스 3국(아제르바이잔, 조지아, 아르메니아) 제2의 곽튜브를 꿈꾸다', airplane: '대한항공', where: '코카서스', price: '5,800,000원~'}, 
        {item_no: 6, src: "img/travel/egypt.jpg", title: '이집트 카이로 문화투어', airplane: '티웨이 항공', where: '이집트', price: '6,500,000원~'}, 
        {item_no: 7, src: "img/travel/africa.jpg", title: '아프리카 투어', airplane: '대한항공', where: '아프리카', price: '8,300,000원~'},      
        {item_no: 8, src: "img/travel/arab.jpg", title: '아랍문화권 투어', airplane: '대한항공', where: '아랍', price: '5,800,000원~'}, 
            ],
            [
        {item_no: 0, src: "img/travel/beijing.jpg", title: '베이징 3박 4일', airplane: '증극동방항공', where: '베이징', price: '320,000원~'}, 
        {item_no: 1, src: "img/travel/shanghai.jpg", title: '상하이 3박 4일', airplane: '증국남방항공', where: '상하이', price: '350,000원~'}, 
        {item_no: 2, src:  "img/travel/qingdao.jpg", title: '칭따오 4박 5일 투어(맥주공장 견학 포함)', airplane: '아시아나', where: '칭다오', price: '420,000원~'}, 
        {item_no: 3, src: "img/travel/haelbin.jpg", title: '하얼빈 문화제 투어 4박 5일', airplane: '대한항공', where: '하얼빈', price: '550,000원~'}, 
        {item_no: 4, src: "img/travel/xian.jpg", title: '서안 병마용 투어', airplane: '아시아나', where: '서안', price: '380,000원~'}, 
        {item_no: 5, src:  "img/travel/mong.jpg", title: '몽골 투어', airplane: '대한항공', where: '몽골', price: '1,800,000원~'}, 
        {item_no: 6, src: "img/travel/centerasia.jpg", title: '중앙아시아 투어(우즈베키스탄, 카자흐스탄)', airplane: '티웨이 항공', where: '중앙아시아', price: '2,500,000원~'}, 
        {item_no: 7, src: "img/travel/westasia.jpg", title: '서아시아 투어', airplane: '대한항공', where: '서아시아', price: '1,300,000원~'},      
        {item_no: 8, src:  "img/travel/hongkong.jpg", title: '홍콩투어(마카오 포함)', airplane: '대한항공', where: '홍콩', price: '800,000원~'}, 
        ],
        [
            {item_no: 0, src: "img/travel/guam.jpg", title: '괌 휴양지 여행', airplane: '대한항공', where: '괌', price: '820,000원~'}, 
            {item_no: 1, src:  "img/travel/saipan.jpg", title: '사이판 호캉스', airplane: '아시아나', where: '사이판', price: '850,000원~'}, 
            {item_no: 2, src: "img/travel/sydney.jpg", title: '시드니 7박 8일', airplane: '아시아나', where: '시드니', price: '420,000원~'}, 
            {item_no: 3, src: "img/travel/brisbone.jpg", title: '브리즈번 7박 8일', airplane: '대한항공', where: '브리즈번', price: '2,550,000원~'}, 
            {item_no: 4, src:  "img/travel/mel.jpg", title: '멜버른 6박 7일', airplane: '아시아나', where: '멜버른', price: '2,380,000원~'}, 
            {item_no: 5, src:  "img/travel/okland.jpg", title: '오클랜드 6박 7일', airplane: '대한항공', where: '오클랜드', price: '2,500,000원~'}, 
            {item_no: 6, src: "img/travel/newsouth.jpg", title: '뉴질랜드 남섬 투어', airplane: '대한항공', where: '뉴질랜드 남섬', price: '2,500,000원~'}, 
            ],
            [
                {item_no: 0, src: "img/travel/mexico.jpg", title: '멕시코에서 살아남기', airplane: '대한항공', where: '멕시코', price: '3,820,000원~'}, 
                {item_no: 1, src: "img/travel/argentina.jpg", title: '남미서 살아남기', airplane: '아시아나', where: '남미', price: '4,850,000원~'}, 
                {item_no: 2, src:   "img/travel/hawai.jpg", title: '하와이 7박 8일', airplane: '아시아나', where: '하와이', price: '3,420,000원~'}, 
                {item_no: 3, src:  "img/travel/newyork.jpg", title: '한달만에 뉴욕커가 되보자', airplane: '대한항공', where: '브리즈번', price: '8,550,000원~'}, 
                {item_no: 4, src:  "img/travel/la.jpg", title: '여유로운 LA 생활', airplane: '아시아나', where: '로스엘젤러스', price: '8,380,000원~'}, 
                {item_no: 5, src:   "img/travel/roki.jpg", title: '로키산맥 투어', airplane: '대한항공', where: '캐나다', price: '5,500,000원~'}, 
                {item_no: 6, src: "img/travel/toronto.jpg", title: '토론토에서 뉴욕 구경하기', airplane: '대한항공', where: '토론토', price: '5,500,000원~'}, 
                ],
]
$(document).ready(function(){
    let cast = 0
    let count = 0
    console.log(TRAVEL_LIST.length)
    function lotto(a){
        let rand_arr = new Array(0);
        while(count <a) {
            let rand = Math.floor(Math.random() * a)
                if(count == 0) {
                rand_arr.push(rand);
                count+=1;
        }
                else {
                let chk_match = false;
                    for(let i=0; i< rand_arr.length; i++) {
                        if(rand_arr[i] == rand) {
                        chk_match=true;
                    }
                }
            if(!chk_match) {
            rand_arr.push(rand);
            count+=1;
                    }
        }
    }
    return rand_arr;
}
let land = lotto(TRAVEL_LIST.length)
// recomend
for(let i= 0; i <TRAVEL_LIST.length; i++){
    console.log("랜드",land, "," , land[i], "," ,lotto(land[i]))
    let country = TRAVEL_LIST[land[i]].length
    let best =
    `<div class="item">
    <div class="img_box">
        <img src="${TRAVEL_LIST[land[i]][i].src}" alt="" style="width:471.28px; height:300px">
    </div>
    <div class="desc_box">
        <div class="title">${TRAVEL_LIST[land[i]][i].title}</div>
        <div class="airplane">${TRAVEL_LIST[land[i]][i].airplane}</div>
        <div class="where">${TRAVEL_LIST[land[i]][i].where}</div>
        <div class="price">${TRAVEL_LIST[land[i]][i].price}</div>
    </div>
</div>
<br>`

$('.recomendation').append(best)
}
console.log(TRAVEL_LIST[cast].length)
let zero = 0;
    for(let i=0; i<TRAVEL_LIST.length; i ++){
        zero = i
        for(let j=0; j<TRAVEL_LIST[zero].length; j++){
            let tour =     
            `<div class="item">
            <div class="img_box">
                <img src="${TRAVEL_LIST[zero][j].src}" alt="" style="width:471.28px; height:300px">
            </div>
            <div class="desc_box">
                <div class="title">${TRAVEL_LIST[zero][j].title}</div>
                <div class="airplane">${TRAVEL_LIST[zero][j].airplane}</div>
                <div class="where">${TRAVEL_LIST[zero][j].where}</div>
                <div class="price">${TRAVEL_LIST[zero][j].price}</div>
            </div>
        </div>
        <br>`
        $(`.${zero}`).append(tour)
        }
    }
    
    $('.list_item').click(function(){
        let cate = 0;
        console.log($(this).index())

        $('.recomendation').addClass('pre')
        if(($(this).index()%TRAVEL_LIST.length) == 0)
        {            
            for(let i=0; i<$('.tour_list').length; i++){
                $('.tour_list').eq(i).css({
                    display:'none'
                })
                $('.list_item').eq(i).css({
                    width:'100px',
                    height: '50px',
                    lineHeight: '50px',
                    backgroundColor: 'inherit',
                    zIndex:'1'
                })
                $('.tour_list').eq(cate).find('.icon').css({
                    bottom:'200px'

                })
            }
            cate = $(this).index();
            $('.list_item').eq(cate).css({
                width:'150px',
                height: '85px',
                lineHeight: '85px',
                backgroundColor: 'pink',
                zIndex:'99'
            })
            
            $('.tour_list').eq(cate).stop().slideDown(2000)
            
            $('.tour_list').eq(cate).find('.icon').animate({
                bottom:'0',

            },1000).css({
                display: 'block'
            })

        }
        else if (($(this).index()%TRAVEL_LIST.length) == 1 ){
                for(let i=0; i<$('.tour_list').length; i++){
                    $('.tour_list').eq(i).css({
                        display:'none'
                    })
                    $('.list_item').eq(i).css({
                        width:'100px',
                        height: '50px',
                        lineHeight: '50px',
                        backgroundColor: 'inherit',
                        zIndex:'1'
                    })
                }
                cate = $(this).index();
                $('.list_item').eq(cate).css({
                    width:'150px',
                    height: '85px',
                    lineHeight: '85px',
                    backgroundColor: 'pink',
                    zIndex:'99'
                })
                
                $('.tour_list').eq(cate).stop().slideDown(2000)
        }
        else if (($(this).index()%TRAVEL_LIST.length) == 2 ){
            for(let i=0; i<$('.tour_list').length; i++){
                $('.tour_list').eq(i).css({
                    display: 'none'
                })
                $('.list_item').eq(i).css({
                    width:'100px',
                    height: '50px',
                    lineHeight: '50px',
                    backgroundColor: 'inherit',
                    zIndex:'1'
                })
            }
            cate = $(this).index();
            $('.list_item').eq(cate).css({
                width:'150px',
                height: '85px',
                lineHeight: '85px',
                backgroundColor: 'pink',
                zIndex:'99'
            })
            $('.tour_list').eq(cate).stop().slideDown(2000)
        }
        else if (($(this).index()%TRAVEL_LIST.length) == 3 ){
            for(let i=0; i<$('.tour_list').length; i++){
                $('.tour_list').eq(i).css({
                    display: 'none'
                })
                $('.list_item').eq(i).css({
                    width:'100px',
                    height: '50px',
                    lineHeight: '50px',
                    backgroundColor: 'inherit',
                    zIndex:'1'
                })
            }
            cate = $(this).index();
            $('.list_item').eq(cate).css({
                width:'150px',
                height: '85px',
                lineHeight: '85px',
                backgroundColor: 'pink',
                zIndex:'99'
            })
            $('.tour_list').eq(cate).stop().slideDown(2000)
        }
        else if (($(this).index()%TRAVEL_LIST.length) == 4 ){
            for(let i=0; i<$('.tour_list').length; i++){
                $('.tour_list').eq(i).css({
                    display: 'none'
                })
                $('.list_item').eq(i).css({
                    width:'100px',
                    height: '50px',
                    lineHeight: '50px',
                    backgroundColor: 'inherit',
                    zIndex:'1'
                })
            }
            cate = $(this).index();
            $('.list_item').eq(cate).css({
                width:'150px',
                height: '85px',
                lineHeight: '85px',
                backgroundColor: 'pink',
                zIndex:'99'
            })
            $('.tour_list').eq(cate).stop().slideDown(2000)
        }
        else if (($(this).index()%TRAVEL_LIST.length) == 5 ){
            for(let i=0; i<$('.tour_list').length; i++){
                $('.tour_list').eq(i).css({
                    display: 'none'
                })
                $('.list_item').eq(i).css({
                    width:'100px',
                    height: '50px',
                    lineHeight: '50px',
                    backgroundColor: 'inherit',
                    zIndex:'1'
                })
            }
            cate = $(this).index();
            $('.list_item').eq(cate).css({
                width:'150px',
                height: '85px',
                lineHeight: '85px',
                backgroundColor: 'pink',
                zIndex:'99'
            })
            $('.tour_list').eq(cate).stop().slideDown(2000)
        }
    })
    let foot_top =$('.footer').offset().top
    $(window).scroll(function(){
        let s_top = $(window).scrollTop()
        console.log(foot_top)
        console.log(s_top)
        console.log(travel_bottom)
        if(s_top = foot_top){
            $('.icon').css({
                position: 'absolute',
                bottom:0,
                left: '100%'
            })
        }
    })
})
// Math.floor(Math.random()*country)