● 신발소매업 사이트를 벤치마킹한 팀프로젝트입니다.

1. 유스케이스 다이어그램 설계

● (사이트에 필요한 기능들을 정리해봤습니다.)




 ![image](https://github.com/seongjinguk/back/assets/80434338/831b4b2e-9a28-48da-ac52-92c8f5738d47)








2. 상품 카테고리, 상품 리스트 구현

2-1. 필터 기능을 누르면 정렬 기준과 각종 분류필터가 드롭-다운으로 나타납니다.

2-2. 필터 정렬 기준에 따라 상품들이 나타납니다.





![image](https://github.com/seongjinguk/back/assets/80434338/ac3962a6-1f0d-4d6d-91d3-349207bb9ed5)

● 위 사진의 쓰인 코드

● (상품을 forEach문으로 가져와서 나열했습니다.)
![image](https://github.com/seongjinguk/back/assets/80434338/cd3de08a-97df-4ade-a04c-4a11a74913f3)







3. 다중조건검색필터
   
● (각 조건에 맞는 필터들을 골라 그에 해당하는 상품들을  Ajax를 사용해서 화면에 보여줍니다.)



   ![image](https://github.com/seongjinguk/back/assets/80434338/1cbad083-d36c-4e80-a3a4-62ddd040562d)
   
● 위 사진의 쓰인 코드

● (색상은 다중 선택이 가능하게 매퍼를 구현했고 나머지 옵션들은 단일 선택으로 선택하게 했습니다.)


● (선택을 안하면 그 옵션은 모든 결과물이 다 나옵니다.)



   ![image](https://github.com/seongjinguk/back/assets/80434338/be3f208c-59a3-46a7-9340-37b08e3d158b)
   
   ● Ajax를 사용한 코드



   ![image](https://github.com/seongjinguk/back/assets/80434338/974e082a-e37e-4d7d-b61b-d984a2de73b5)


   



4. 게시판 글쓰기, 수정, 삭제 및 검색

   4-1. 게시글의 목록을 나열하고 조회시 조회수가 올라갑니다.
   
   4-2. 페이지네이션 기능을 넣어 화면의 보여줄 게시글의 개수를 정해놓고 보여줄




![image](https://github.com/seongjinguk/back/assets/80434338/02f9d32c-bd66-48db-bfbf-d4904251b85e)


   ● 상품나열과 같이 forEach문을 사용하여 DB에 있는 게시글들을 불러옵니다.
   
   ● 페이지네이션 기능을 사용한 코드
   

![image](https://github.com/seongjinguk/back/assets/80434338/6e8e1989-70d3-430b-963c-cbde441fc086)


   ● 해당 게시글을 클릭시 글쓴이가 현재 로그인한 아이디와 일치할 때 수정, 삭제가 가능해집니다. (아이디가 일치하지 않으면 읽기 전용으로 바뀜)

![image](https://github.com/seongjinguk/back/assets/80434338/29fd5a3b-5185-4e9f-ad5c-5944229ffcdf)



   
