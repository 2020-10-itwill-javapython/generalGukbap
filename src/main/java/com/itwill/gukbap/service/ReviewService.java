package com.itwill.gukbap.service;

import java.util.List;

import com.itwill.gukbap.domain.ReviewDomain;

public interface ReviewService {
	
	 List<ReviewDomain> selectAllReview();
	 
	 List<ReviewDomain> selectAllReviewArrangeInTheLatestReview();
	 
	 List<ReviewDomain> selectAllReviewArrangeInTheLatestFive();
	 
	 List<ReviewDomain> selectReviewWithPhoto();
	 
	 ReviewDomain selectReviewByReviewNo(int review_no);
	 
	 public ReviewDomain select_review_with_o_d_no(int o_d_no);
	 
	 public List<ReviewDomain> review_and_replies(int review_group_no);
	 
	 public List<ReviewDomain> select_latest_reviews();
	 
	 
	 
	 //한 페이지에 보여주는 후기
	 List<ReviewDomain> selectReviewOnOnePage(int review_no);
	 
	 List<ReviewDomain> selectReviewByProductNo(int product_no);
	 
	 int insertReview(ReviewDomain review);
	 
	 public int insert_replay(ReviewDomain review);
	 
	 int updateReview(ReviewDomain review);
	 
	 int deleteReviewByReviewNo(int product_no);
	
			 

}
