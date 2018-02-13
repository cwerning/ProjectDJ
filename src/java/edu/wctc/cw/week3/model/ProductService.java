/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.cw.week3.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author Chad Werning
 */
public class ProductService {

    private final List<Product> productList = Arrays.asList(
            new Product("101", "Screw"),
            new Product("102", "Bolt"),
            new Product("103", "Nut")
    );

    public Product getProduct(String id) {
        Product ret = null;
        for (Product f : productList) {
            if (f.getId().equals(id)) {
                ret = f;
            }
        }
        return ret;
    }

    public List<Product> getAllProducts() {
        return productList;
    }

    public List<Product> findProducts(String search) {
        List<Product> ret = new ArrayList<>();
        for (Product n : productList) {
            search = search.toLowerCase();
            if (n.getProductName().toLowerCase().contains(search)) 
            {
                ret.add(n);
            }
        }
        return ret;
    }

}
