package com.itwill.gukbap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.gukbap.domain.ReviewDomain;
import com.itwill.gukbap.repository.ReviewRepository;


@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewRepository reviewRepository;
	
	@Override
	public List<ReviewDomain> selectAllReview() {
		return reviewRepository.selectAllReview();
	}
	@Override
	public List<ReviewDomain> selectAllReviewArrangeInTheLatestReview() {
		return reviewRepository.selectAllReviewArrangeInTheLatestReview();
	}
	@Override
	public List<ReviewDomain> selectAllReviewArrangeInTheLatestFive() {
		return reviewRepository.selectAllReviewArrangeInTheLatestFive();
	}
	@Override
	public List<ReviewDomain> selectReviewWithPhoto() {
		return reviewRepository.selectReviewWithPhoto();
	}
	@Override
	public ReviewDomain selectReviewByReviewNo(int review_no) {
		return reviewRepository.selectReviewByReviewNo(review_no);
	}
	@Override
	public List<ReviewDomain> selectReviewOnOnePage(int review_no) {
		return reviewRepository.selectReviewOnOnePage(review_no);
	}
	@Override
	public List<ReviewDomain> selectReviewByProductNo(int product_no) {
		return reviewRepository.selectReviewByProductNo(product_no);
	}
	@Override
	public int insertReview(ReviewDomain review) {
		return reviewRepository.insertReview(review);
	}
	@Override
	public int updateReview(ReviewDomain review) {
		return reviewRepository.updateReview(review);
	}
	@Override
	public int deleteReviewByReviewNo(int product_no) {
		return reviewRepository.deleteReviewByReviewNo(product_no);
	}
	

}
