//
//  ProductVC.swift
//  Shopping App Demo
//
//  Created by PoGo on 10/6/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    var products = [Product]()
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.delegate = self
        productsCollection.dataSource = self

    }
    
    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "productPageToDetail", sender: nil)
    }

}
