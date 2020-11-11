package com.itwill.gukbap.service;

import java.util.List;

import com.itwill.gukbap.domain.ProductDomain;

public interface ProductService {
	
	List<ProductDomain> selectAll();
	
	ProductDomain selectProductByProductName(String product_name);

	ProductDomain selectProductByProductNo(int product_no);
	
	List<ProductDomain> selectProductByCategoryNo(int c_no);
	
	ProductDomain selectProductIsOnSale(String sysdate);
	
	List<ProductDomain> selectProductOrderByClickCount();
	
	int insertProduct(ProductDomain product);
	
	int updateProduct(ProductDomain product);
	
	int deleteProductByProductName(String product_name);
	
	int deleteProductByProductNo(int product_no);

}
