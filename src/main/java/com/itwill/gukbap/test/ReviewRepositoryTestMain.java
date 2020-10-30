package com.itwill.gukbap.test;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.ReviewDomain;
import com.itwill.gukbap.repository.ReviewRepository;

import oracle.sql.DATE;


public class ReviewRepositoryTestMain {

	public static void main(String[] args) throws SQLException {
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		
		ReviewRepository reviewDao=applicationContext.getBean(ReviewRepository.class);
		
		//1.모든 후기
		System.out.println(reviewDao.selectAllReview());
		
		//2.모든 후기(최신 후기로 정렬)
		//System.out.println(reviewDao.selectAllReviewArrangeInTheLatestReview());
		
		//3.사진 있는 후기만
		//System.out.println(reviewDao.selectReviewWithPhoto());
		
		//4.후기번호로 후기 하나
		//System.out.println(reviewDao.selectReviewByReviewNo(1));
		
		//5.제품번호로 후기 여러 개
		//System.out.println(reviewDao.selectReviewByProductNo(1));
		
		//6.후기 추가***********date 어떻게???*********** 
//		System.out.println(reviewDao.insertReview(
//				new ReviewDomain(6, "porkgukbap.jpg", "돼지국밥", "부산에서 먹는 맛!!", ?, 6, 1, 1, 1, 2)));
	
		//7.후기 수정***********date 어떻게???*********** 
		//System.out.println(reviewDao.updateReview(new ReviewDomain()));
		
		//8.후기 삭제
		//System.out.println(reviewDao.deleteReviewByReviewNo(6));
		
	
		
	}

}
