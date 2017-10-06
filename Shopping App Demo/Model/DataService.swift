//
//  DataService.swift
//  Shopping App Demo
//
//  Created by PoGo on 10/6/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import Foundation
class DataService{
    
    static let instance = DataService()
    
    private let categories = [Category(title: "SHIRTS", imageName: "shirts.png"),
                              Category(title: "HOODIES", imageName: "hoodies.png"),
                              Category(title: "HATS", imageName: "hats.png"),
                              Category(title: "DIGITALS", imageName: "digital.png")

        ]
    
    private let hats = [Product(title: "Graphic Beanie", price: "$18", imageName: "hat01.png"),
                        Product(title: "Graphic Hat Back", price: "$19", imageName: "hat02.png"),
                        Product(title: "Graphic Hat White", price: "$20", imageName: "hat03.png"),
                        Product(title: "Graphic Snapback", price: "$21", imageName: "hat04.png")

    ]
    
    
    private let hoodies = [Product(title: "Hoodie Gray", price: "$28", imageName: "hoodie01.png"),
                        Product(title: "Hoodie Red", price: "$29", imageName: "hoodie02.png"),
                        Product(title: "Hoodie Grey", price: "$30", imageName: "hoodie03.png"),
                        Product(title: "Hoodie Black", price: "$31", imageName: "hoodie04.png")
        
    ]
    
    private let shirts = [Product(title: "Shirt Black", price: "$28", imageName: "shirt01.png"),
                           Product(title: "Shirt Light Gray", price: "$29", imageName: "shirt02.png"),
                           Product(title: "Shirt Red", price: "$30", imageName: "shirt03.png"),
                           Product(title: "Shirt Grey", price: "$31", imageName: "shirt04.png"),
                           Product(title: "Shirt Black", price: "$31", imageName: "shirt05.png")

    ]
    
    private let digitalGoods = [Product]()
    
    
    
    func getCategories() -> [Category]{
        
        return categories
        
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product]{
        switch title {
            
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITALS":
            return getDigitalGoods()
            
        default:
            return getShirts()
        }
        
        
    }
    
    func getHats() -> [Product]{
        return hats
        
    }
    
    func getHoodies() -> [Product]{
        return hoodies
        
    }
    
    func getShirts() -> [Product]{
        return shirts
        
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
        
    }
    
    
}
