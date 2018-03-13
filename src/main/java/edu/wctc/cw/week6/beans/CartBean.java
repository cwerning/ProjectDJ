/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.cw.week6.beans;

import edu.wctc.cw.week6.model.Product;
import edu.wctc.cw.week6.model.ProductService;
import java.util.List;
import javax.inject.Named;
import javax.enterprise.context.Dependent;

/**
 *
 * @author Chad Werning
 */
@Named(value = "cartBean")
@Dependent
public class CartBean {
    
    private Product product;
    private List<Product> productList;
    /**
     * Creates a new instance of CartBean
     */
    public CartBean() {
    }
    
    public String cart(){
        return "cart";
    }
    
    public void addProductToCart(Product product){
        productList.add(product);
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }
    
    
    
}
