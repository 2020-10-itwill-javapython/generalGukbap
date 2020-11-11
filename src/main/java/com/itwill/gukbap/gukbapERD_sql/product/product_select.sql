
--모든 제품 불러오기
select * from product;

--제품명으로 제품 하나 불러오기 
select * from product where product_name='굴국밥';

--제품번호로 제품 하나 불러오기(product_no=6, 테스트국밥)
select * from product where product_no=6;

--카테고리 번호로 국밥류만 불러오기(c_no=1, 국밥류)
select * from product where c_no=1;

--카네고리 번호로 사이드 중에 가격이 높은 순서대로, 
select * from product where c_no=2 order by product_price desc;

--가격이 낮은 순서대로, 
select * from product where c_no=2 order by product_price asc;

--주문량이 많은 순서대로, 
select * from product where c_no=2 order by product_sale_count desc;

--주문량이 적은 순서대로, 
select * from product where c_no=2 order by product_sale_count asc;

--클릭수가 많은 순서대로 5개 뽑기 
select *
from ( select * 
       from product
       order by product_click_count desc )
where rownum <= 5;

--클릭수가 적은 순서대로, 
select * from product where c_no=2 order by product_click_count asc;

--세일하고 있는 사이드만 불러오기
select * from product where c_no=2 and product_isonsale='true';

--할인 중인 제품 뽑아내기
--(sysdate 요일과 product_sale_date 요일이 일치하면으로 조건 변경!!!!)
select product_no, product_name, product_price*0.7 as product_price, 
	   product_image, product_desc, product_sale_count, product_click_count, 
	   c_no, product_order, product_isOnSale, product_discountRate, product_sale_date
from product
where product_sale_date='2020/10/19';








