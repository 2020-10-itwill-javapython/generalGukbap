package com.itwill.gukbap.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.gukbap.domain.ProductDomain;
import com.itwill.gukbap.mapper.ProductMapper;


@Repository
public class ProductRepositoryImpl implements ProductRepository {
	@Autowired
	ProductMapper productMapper;
	
	@Override
	public int insertProduct(ProductDomain product) {
		return productMapper.insertProduct(product);
	}
	
	@Override
	public List<ProductDomain> selectAll() {
		return productMapper.selectAll();
	}
	
	@Override
	public ProductDomain selectProductByProductName(String product_name) {
		return productMapper.selectProductByProductName(product_name);
	}
	
	@Override
	public ProductDomain selectProductByProductNo(int product_no) {
		return productMapper.selectProductByProductNo(product_no);
	}
	
	@Override
	public List<ProductDomain> selectProductByCategoryNo(int c_no) {
		return productMapper.selectProductByCategoryNo(c_no);
	}
	
	@Override
	public ProductDomain selectProductIsOnSale(String sysdate) {
		return productMapper.selectProductIsOnSale(sysdate);
	}
	
	@Override
	public List<ProductDomain> selectProductOrderByClickCount() {
		return productMapper.selectProductOrderByClickCount();
	}
	
	@Override
	public int updateProduct(ProductDomain product) {
		return productMapper.updateProduct(product);
	}
	
	@Override
	public int deleteProductByProductName(String product_name) {
		return productMapper.deleteProductByProductName(product_name);
	}
	
	@Override
	public int deleteProductByProductNo(int product_no) {
		return productMapper.deleteProductByProductNo(product_no);
	}



}
