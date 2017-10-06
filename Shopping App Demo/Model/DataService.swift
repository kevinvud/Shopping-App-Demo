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
    func getCategories() -> [Category]{
        
        return categories
        
    }
    
}
