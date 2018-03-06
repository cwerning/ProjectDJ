/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.cw.week4.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author Chad Werning
 */
public class ProductService {
    
    

    private final List<Product> productList = Arrays.asList(
           new Product("101", "Zipper", "This device that brings together two pieces of fabric "
                   + "was originally a trademark of B.F. Goodrich but is now generic."),
           new Product("102", "Jell-O", "A brand name of gelatin desserts owned by Kraft Foods."),
           new Product("103", "Yo-Yo", "Generic (originally a trademark of Duncan Yo-Yo Company."),
           new Product("104", "Frisbee", "A flying disc product trademarked by Wham-O."),
           new Product("105", "Escalator", "The leading brand for a moving staircase "
                   + "was originally a trademark of Otis Elevator and is now generic."),
           new Product("106", "Butterscotch", "This flavor is generic but was "
                   + "originally a trademark of Parkinson’s."),
           new Product("107", "Videotape", "Originally trademarked by Ampex Corp."),
           new Product("108", "Popsicle", "The popular brand of ice pop is trademarked by Unilever."),
           new Product("109", "Thermos", "This vacuum flask from Thermos GmbH was declared "
                   + "generic in the U.S. in 1963."),
           new Product("110", "Kleenex", "A brand name for a toiletry paper-based "
                   + "products owned by Kimberly-Clark Worldwide."),
           new Product("111", "Scotch-Tape", "A transparent adhesive brand owned by 3M."),
           new Product("112", "Vaseline", "A brand of petroleum jelly-based products "
                   + "owned by Unilever."),
           new Product("113", "Ping Pong", "A brand of table tennis originally trademarked "
                   + "by Jacques and Son (and later Parker Bros"),
           new Product("114", "Windex", "A glass gleaner now owned by SC Johnson."),
           new Product("115", "Baseball", "Ball used for the sport of baseball."),
           new Product("116", "Q-Tips", "The leading cotton swab brand is owned by Unilever."),
           new Product("117", "Saran Wrap", "The thin, clingy plastic wrap "
                   + "brand owned by S.C. Johnson & Sons."),
           new Product("118", "Plexiglas(s)", "Plexiglas is a popular brand for shatter-proof glass "
                   + "trademarked by Rohm and Haas (later sold to Arkema)."),
           new Product("119", "Kool-Aid", "A brand of flavored drink mix owned by Kraft Foods Company.")
      
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
