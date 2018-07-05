//
//  ProductModel.swift
//  salero-native
//
//  Created by Ananta Pratama on /5Jul/18.
//  Copyright © 2018 Ignitech. All rights reserved.
//

class ProductModel {
    
    var productName: String
    var description: [String]
    var productImage: String
    var productPrice: String
    
    init(name productName: String, description: [String], image productImage: String, price productPrice: String) {
        self.productName = productName
        self.description = description
        self.productImage = productImage
        self.productPrice = productPrice
    }
    
}
