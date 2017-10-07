//
//  ProductDetailVC.swift
//  Shopping App Demo
//
//  Created by PoGo on 10/6/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

class ProductDetailVC: UIViewController {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var addToCartButton: UIButton!
    
    var productDetail = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let product = productDetail[0]
        updateViews(product: product)
        
    }
    func initProducts(product: Product){
        productDetail = [product]
        
        
    }
    
    func updateViews(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
        
    }
    
    
}
