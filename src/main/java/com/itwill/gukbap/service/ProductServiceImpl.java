package com.itwill.gukbap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.gukbap.domain.ProductDomain;
import com.itwill.gukbap.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Override
	public List<ProductDomain> selectAll() {
		return productRepository.selectAll();
	}
	
	@Override
	public ProductDomain selectProductByProductName(String product_name) {
		return productRepository.selectProductByProductName(product_name);
	}
	
	@Override
	public ProductDomain selectProductByProductNo(int product_no) {
		return productRepository.selectProductByProductNo(product_no);
	}
	
	@Override
	public List<ProductDomain> selectProductByCategoryNo(int c_no) {
		return productRepository.selectProductByCategoryNo(c_no);
	}
	
	@Override
	public ProductDomain selectProductIsOnSale() {
		return productRepository.selectProductIsOnSale();
	}
	
	@Override
	public List<ProductDomain> selectProductOrderByClickCount() {
		return productRepository.selectProductOrderByClickCount();
	}
	
	@Override
	public int insertProduct(ProductDomain product) {
		return productRepository.insertProduct(product);
	}
	
	@Override
	public int updateProduct(ProductDomain product) {
		return productRepository.updateProduct(product);
	}
	
	@Override
	public int deleteProductByProductName(String product_name) {
		return productRepository.deleteProductByProductName(product_name);
	}
	
	@Override
	public int deleteProductByProductNo(int product_no) {
		return productRepository.deleteProductByProductNo(product_no);
	}

}
