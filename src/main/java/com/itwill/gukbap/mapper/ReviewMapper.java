package com.itwill.gukbap.mapper;

import java.util.List;

import com.itwill.gukbap.domain.ReviewDomain;

public interface ReviewMapper {
	//모든 후기
	public List<ReviewDomain> selectAllReview();
	//최신 후기순으로 정렬
	public List<ReviewDomain> selectAllReviewArrangeInTheLatestReview();
	//최신 후기 5개
	public List<ReviewDomain> selectAllReviewArrangeInTheLatestFive();
	
	public List<ReviewDomain> select_review_and_replies(int review_group_no);
	
	public List<ReviewDomain> select_latest_replies();
	
	public ReviewDomain select_review_with_o_d_no(int o_d_no);
	
	//사진 있는 후기만
	public List<ReviewDomain> selectReviewWithPhoto();
	//하나만
	public ReviewDomain selectReviewByReviewNo(int review_no);
	//한 페이지에 보여주는 후기
	public List<ReviewDomain> selectReviewOnOnePage(int review_no);
	//제품 번호로 여러 개
	public List<ReviewDomain> selectReviewByProductNo(int product_no);

	public int insertReview(ReviewDomain review);
	
	public int insert_reply(ReviewDomain review);
	
	public int updateReview(ReviewDomain review);
	
	public int deleteReviewByReviewNo(int product_no);
	/*
		--모든 후기 불러오기
		select * from review
		
		--최근순으로 모든 후기 불러오기
		select * from review order by review_upload_date desc
		
		--사진 있는 후기만 불러오기
		select * from review where review_image is not null
		
		--후기번호로 후기 하나 불러오기 
		select * from review where review_no=?
		
		--후기번호로 후기 10개 불러오기
		select * from (select * from review where review_no < ? order by review_no) where rownum <= 10
		
		--제품번호로 후기 여러 개 불러오기
		select * from review where product_no=?
		
		insert into review values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
				
		--후기 수정
		update review set review_title=?, review_content=? where review_no=?
		
		--후기 삭제
		delete from review where review_no=?
	 */
	
	

}
