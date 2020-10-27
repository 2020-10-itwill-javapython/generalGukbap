package com.itwill.gukbap.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.gukbap.domain.ProductCategoryDomain;
import com.itwill.gukbap.mapper.ProductCategoryMapper;

@Repository
public class ProductCategoryRepositoryImpl implements ProductCategoryRepository {
	
	@Autowired
	ProductCategoryMapper productCategoryMapper;
	
	@Override
	public List<ProductCategoryDomain> selectAll() {
		return productCategoryMapper.selectAll();
	}
	
	@Override
	public ProductCategoryDomain selectProductCategoryByCategoryNo(int c_no) {
		return productCategoryMapper.selectProductCategoryByCategoryNo(c_no);
	}
	
	@Override
	public int insertProductCategory(ProductCategoryDomain category) {
		return productCategoryMapper.insertProductCategory(category);
	}
	
	@Override
	public int updateProductCategoryName(ProductCategoryDomain category) {
		return productCategoryMapper.updateProductCategoryName(category);
	}
	
	@Override
	public int deleteProductCategoryByCategoryName(String c_name) {
		return productCategoryMapper.deleteProductCategoryByCategoryName(c_name);
	}
	
	@Override
	public int deleteProductCategoryByCategoryNo(int c_no) {
		return productCategoryMapper.deleteProductCategoryByCategoryNo(c_no);
	}
	
	
}
