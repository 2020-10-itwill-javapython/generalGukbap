/*
	INSERT INTO review 
	VALUES (review_no, review_image, review_title, 
	review_content, review_upload_date, review_group_no, 
	review_group_order, product_no, order_detail_no);
	
	review_review_no_SEQ.nextval
	*/
--리뷰 추가(국밥)
INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, '사진', '리뷰1', 
		'리뷰1', to_date('2020/10/26', 'yyyy/MM/dd'), 
		review_group_no, review_group_order, 
		1, order_detail_no);

INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, '사진', '리뷰2', 
		'리뷰2', to_date('2020/10/26', 'yyyy/MM/dd'), 
		review_group_no, review_group_order, 
		1, order_detail_no);

INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, '사진', '리뷰3', 
		'리뷰3', to_date('2020/10/26', 'yyyy/MM/dd'), 
		review_group_no, review_group_order, 
		1, order_detail_no);

INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, '사진', '리뷰4', 
		'리뷰4', to_date('2020/10/26', 'yyyy/MM/dd'), 
		review_group_no, review_group_order, 
		1, order_detail_no);

INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, '사진', '리뷰5', 
		'리뷰5', to_date('2020/10/26', 'yyyy/MM/dd'), 
		review_group_no, review_group_order, 
		1, order_detail_no);

--리뷰 추가(사이드)
INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, '사진', '리뷰6', 
		'리뷰6', to_date('2020/10/26', 'yyyy/MM/dd'), 
		review_group_no, review_group_order, 
		2, order_detail_no);

INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, '사진', '리뷰7', 
		'리뷰7', to_date('2020/10/26', 'yyyy/MM/dd'), 
		review_group_no, review_group_order, 
		2, order_detail_no);

INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, '사진', '리뷰8', 
		'리뷰8', to_date('2020/10/26', 'yyyy/MM/dd'), 
		review_group_no, review_group_order, 
		2, order_detail_no);

commit;