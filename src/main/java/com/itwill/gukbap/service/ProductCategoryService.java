package com.itwill.gukbap.service;

import java.util.List;

import com.itwill.gukbap.domain.ProductCategoryDomain;

public interface ProductCategoryService{
	
	List<ProductCategoryDomain> selectAll();
	
	ProductCategoryDomain selectProductCategoryByCategoryNo(int c_no);
	
	int insertProductCategory(ProductCategoryDomain category);

	int updateProductCategoryName(ProductCategoryDomain category);
	
	int deleteProductCategoryByCategoryName(String c_name);
	
	int deleteProductCategoryByCategoryNo(int c_no);

}
