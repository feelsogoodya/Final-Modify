package com.itwillbs.service;

import com.itwillbs.domain.BuyListDTO;
import com.itwillbs.domain.ReviewDTO;

public interface ReviewService {

	public void insertReview(ReviewDTO reviewDTO);
	
	public ReviewDTO getReviewee(String reviewee); 
	
	public void updateReview(ReviewDTO reviewDTO);
	
	public void updateBuyList(BuyListDTO buylistDTO);
}
