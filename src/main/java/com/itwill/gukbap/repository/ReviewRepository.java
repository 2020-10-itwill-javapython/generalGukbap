package com.itwill.gukbap.repository;

import java.util.List;

import com.itwill.gukbap.domain.ReviewDomain;

public interface ReviewRepository {
	
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
	
}
