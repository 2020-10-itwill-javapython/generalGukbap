/*
	INSERT INTO review 
	VALUES(review_no, review_image, 
	review_title, review_content, 
	review_upload_date, review_group_no, 
	review_step, review_depth, product_no, o_d_no);
	
	review_review_no_SEQ.nextval
	*/

--리뷰 추가
INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, 'oystergukbap.jpg', '굴국밥', 
		'굴 진짜 많이 들어있어요.', to_date('2020/10/26', 'yyyy/MM/dd'), 
		1, 1, 1, 1, 1);
INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, 'cowgukbap.jpg', '소고기국밥', 
		'고기 많고 얼큰해요.', to_date('2020/10/27', 'yyyy/MM/dd'), 
		2, 1, 1, 3, 2);
INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, 'sundae.jpg', '모듬순대', 
		'가성비 좋아요.', to_date('2020/10/28', 'yyyy/MM/dd'), 
		3, 1, 1, 8, 3);
INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, NULL, '콩나물국밥', 
		'맛있어요.', to_date('2020/10/28', 'yyyy/MM/dd'), 
		4, 1, 1, 5, 4);
INSERT INTO review 
VALUES (review_review_no_SEQ.nextval, 'oystergukbap.jpg', '굴국밥', 
		'시원해요.', to_date('2020/10/29', 'yyyy/MM/dd'), 
		5, 1, 1, 1, 1);

commit;