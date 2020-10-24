package com.itwill.gukbap.repository;

import java.util.List;

import com.itwill.gukbap.domain.ProductCategoryDomain;


public interface ProductCategoryRepository {
	
	public List<ProductCategoryDomain> selectAll();
	
	public ProductCategoryDomain selectProductCategoryByCategoryName(String c_name);

	public ProductCategoryDomain selectProductCategoryByCategoryNo(int c_no);
	
	public int insertProductCategory(ProductCategoryDomain category);
	
	public int updateProductCategory(ProductCategoryDomain category);
	
	public int deleteProductCategoryByCategoryName(String c_name);
	
	public int deleteProductCategoryByCategoryNo(int c_no);
	 
	

	
}
