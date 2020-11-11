package com.itwill.gukbap.repository;

import java.util.List;

import com.itwill.gukbap.domain.ProductDomain;

public interface ProductRepository {
	
	public List<ProductDomain> selectAll();
	
	public ProductDomain selectProductByProductName(String product_name);

	public ProductDomain selectProductByProductNo(int product_no);
	
	public List<ProductDomain> selectProductByCategoryNo(int c_no);
	
	public ProductDomain selectProductIsOnSale(String sysdate);
	
	public List<ProductDomain> selectProductOrderByClickCount();
	
	public int insertProduct(ProductDomain product);
	
	public int updateProduct(ProductDomain product);
	
	public int deleteProductByProductName(String product_name);
	
	public int deleteProductByProductNo(int product_no);
	
}
