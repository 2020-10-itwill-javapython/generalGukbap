/*
--날짜에 따라 할인 적용
update product set product_isOnSale='true',
				   product_discountRate=30
where product_sale_date='';
				   

--날짜에 따라 할인 적용 취소
update product set product_isOnSale='false',
				   product_discountRate=0
where product_sale_date='';
*/

--제품명으로 제품 삭제
delete product where product_name='테스트국밥';


--(제품 번호 있으면) 제품번호로 제품 삭제
delete product where product_no='39';


commit;





