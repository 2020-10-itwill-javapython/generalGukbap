
--모든 카테고리 불러오기
select * from product_category;

--카테고리번호로 국밥류 불러오기 
select * from product_category where c_no=1;

--카테고리번호로 사이드 불러오기 
select * from product_category where c_no=2;

--카테고리번호로 음료 및 주류 불러오기 
select * from product_category where c_no=3;
