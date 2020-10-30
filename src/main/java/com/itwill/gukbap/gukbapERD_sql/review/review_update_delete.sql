/*
	INSERT INTO review 
	VALUES(review_no, review_image, 
	review_title, review_content, 
	review_upload_date, review_group_no, 
	review_step, review_depth, product_no, o_d_no);
	
	review_review_no_SEQ.nextval
	*/

--후기 수정
update review set review_title='굴국밥후기', review_content='만점국밥' where review_no=1;

--후기 삭제
delete from review where review_no=4;

commit;





