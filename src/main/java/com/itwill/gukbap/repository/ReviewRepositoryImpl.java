package com.itwill.gukbap.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.gukbap.domain.ReviewDomain;
import com.itwill.gukbap.mapper.ReviewMapper;


@Repository
public class ReviewRepositoryImpl implements ReviewRepository {
	@Autowired
	ReviewMapper reviewMapper;
	
	@Override
	public List<ReviewDomain> selectAllReview() {
		return reviewMapper.selectAllReview();
	}
	@Override
	public List<ReviewDomain> selectAllReviewArrangeInTheLatestReview() {
		return reviewMapper.selectAllReviewArrangeInTheLatestReview();
	}
	@Override
	public List<ReviewDomain> selectReviewWithPhoto() {
		return reviewMapper.selectReviewWithPhoto();
	}
	@Override
	public ReviewDomain selectReviewByReviewNo(int review_no) {
		return reviewMapper.selectReviewByReviewNo(review_no);
	}
//	@Override
//	public List<ReviewDomain> selectReviewOnOnePage(int review_no) {
//		return reviewMapper.selectReviewOnOnePage(review_no);
//	}
	@Override
	public List<ReviewDomain> selectReviewByProductNo(int product_no) {
		return reviewMapper.selectReviewByProductNo(product_no);
	}
	@Override
	public int insertReview(ReviewDomain review) {
		return reviewMapper.insertReview(review);
	}
	@Override
	public int updateReview(ReviewDomain review) {
		return reviewMapper.updateReview(review);
	}
	@Override
	public int deleteReviewByReviewNo(int product_no) {
		return reviewMapper.deleteReviewByReviewNo(product_no);
	}
	


}