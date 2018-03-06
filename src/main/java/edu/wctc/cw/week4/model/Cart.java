/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.cw.week4.model;

import java.util.Arrays;
import java.util.List;

/**
 *
 * @author wernc
 */
public class Cart {

    private List<Product> cartList;
    private List<Integer> quantityList;

    public void addProductToList(Product product) {
        cartList.add(product);
    }

    public List<Product> getCartProducts() {
        return cartList;
    }

    public void addQuantityToList(int quantity) {
        quantityList.add(quantity);
    }

    public List<Integer> getQuantityForProducts() {
        return quantityList;
    }

    //mock data -------------------------------------------------------------------------------
    
    public final List<Integer> mockQty = Arrays.asList(1,2,3);
    
    private final List<Product> mockList = Arrays.asList(
            new Product("101", "Zipper", "This device that brings together two pieces of fabric "
                    + "was originally a trademark of B.F. Goodrich but is now generic."),
            new Product("102", "Jell-O", "A brand name of gelatin desserts owned by Kraft Foods."),
            new Product("103", "Yo-Yo", "Generic (originally a trademark of Duncan Yo-Yo Company.")
    );
    
    public List<Product> getAllProducts() {
        return mockList;
    }
    
    public List<Integer> getFakeQuantityForProducts() {
        return mockQty;
    }
    

}
