package com.itwill.gukbap.mapper;

import java.util.List;

import com.itwill.gukbap.domain.ProductCategoryDomain;


public interface ProductCategoryMapper {
	
	public List<ProductCategoryDomain> selectAll();
	
	public ProductCategoryDomain selectProductCategoryByCategoryNo(int c_no);
	
	public int insertProductCategory(ProductCategoryDomain category);

	public int updateProductCategoryName(ProductCategoryDomain category);
	
	public int deleteProductCategoryByCategoryName(String c_name);
	
	public int deleteProductCategoryByCategoryNo(int c_no);

}
