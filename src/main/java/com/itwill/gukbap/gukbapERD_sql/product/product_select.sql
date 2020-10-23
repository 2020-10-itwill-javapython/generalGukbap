
--모든 제품 불러오기
select * from product;

--제품명으로 제품 하나 불러오기 
select * from product where product_name='굴국밥';

--제품번호로 제품 하나 불러오기(product_no=6, 테스트국밥)
select * from product where product_no=6;

--카테고리 번호로 국밥류만 불러오기(category_no=1, 국밥류)
select * from product where category_no=1;

--카네고리 번호로 사이드 중에 가격이 높은 순서대로, 
select * from product where category_no=2 order by product_price desc;

--가격이 낮은 순서대로, 
select * from product where category_no=2 order by product_price asc;

--주문량이 많은 순서대로, 
select * from product where category_no=2 order by product_sale_count desc;

--주문량이 적은 순서대로, 
select * from product where category_no=2 order by product_sale_count asc;

--클릭수가 많은 순서대로, 
select * from product where category_no=2 order by product_click_count asc;

--클릭수가 적은 순서대로, 
select * from product where category_no=2 order by product_click_count desc;

--세일하고 있는 사이드만 불러오기
select * from product where category_no=2 and product_isonsale='true';






