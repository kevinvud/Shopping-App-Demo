//
//  Category.swift
//  Shopping App Demo
//
//  Created by PoGo on 10/6/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import Foundation


struct Category{
    
    private(set) var title: String
    private(set) var imageName: String
    
    init(title: String, imageName: String){
        
        self.title = title
        self.imageName = imageName
    }

}
