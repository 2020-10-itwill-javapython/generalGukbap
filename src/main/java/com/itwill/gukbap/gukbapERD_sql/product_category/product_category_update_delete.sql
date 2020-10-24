
--카테고리명 변경(국밥류-->국밥)
update product_category
set c_name = '국밥'
where c_no = 1;

--카테고리명으로 카테고리 삭제
delete product_category 
where c_name= '테스트';


--카테고리번호로 카테고리 삭제
delete product_category 
where c_no= 5;

commit;
