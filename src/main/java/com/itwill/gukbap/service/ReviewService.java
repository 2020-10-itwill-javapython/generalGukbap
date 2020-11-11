package com.itwill.gukbap.service;

import java.util.List;

import com.itwill.gukbap.domain.ReviewDomain;

public interface ReviewService {
	
	 List<ReviewDomain> selectAllReview();
	 
	 List<ReviewDomain> selectAllReviewArrangeInTheLatestReview();
	 
	 List<ReviewDomain> selectAllReviewArrangeInTheLatestFive();
	 
	 List<ReviewDomain> selectReviewWithPhoto();
	 
	 ReviewDomain selectReviewByReviewNo(int review_no);
	 
	 //한 페이지에 보여주는 후기
	 List<ReviewDomain> selectReviewOnOnePage(int review_no);
	 
	 List<ReviewDomain> selectReviewByProductNo(int product_no);
	 
	 int insertReview(ReviewDomain review);
	 
	 int updateReview(ReviewDomain review);
	 
	 int deleteReviewByReviewNo(int product_no);
	
			 

}
