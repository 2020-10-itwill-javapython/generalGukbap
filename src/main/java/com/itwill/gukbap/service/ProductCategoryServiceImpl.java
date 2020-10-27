package com.itwill.gukbap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.gukbap.domain.ProductCategoryDomain;
import com.itwill.gukbap.repository.ProductCategoryRepository;

@Service
public class ProductCategoryServiceImpl implements ProductCategoryService {
	
	@Autowired
	private ProductCategoryRepository productCategoryRepository;
	
	@Override
	public List<ProductCategoryDomain> selectAll() {
		return productCategoryRepository.selectAll();
	}
	@Override
	public ProductCategoryDomain selectProductCategoryByCategoryNo(int c_no) {
		return productCategoryRepository.selectProductCategoryByCategoryNo(c_no);
	}
	@Override
	public int insertProductCategory(ProductCategoryDomain category) {
		return productCategoryRepository.insertProductCategory(category);
	}
	@Override
	public int updateProductCategoryName(ProductCategoryDomain category) {
		return productCategoryRepository.updateProductCategoryName(category);
	}
	@Override
	public int deleteProductCategoryByCategoryName(String c_name) {
		return productCategoryRepository.deleteProductCategoryByCategoryName(c_name);
	}
	@Override
	public int deleteProductCategoryByCategoryNo(int c_no) {
		return productCategoryRepository.deleteProductCategoryByCategoryNo(c_no);
	}
	
	

}
