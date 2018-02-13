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
public class Product {
    
    private String id;
    private String productName;

    public Product(String id, String productName) {
        this.id = id;
        this.productName = productName;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
    
   
    
}
