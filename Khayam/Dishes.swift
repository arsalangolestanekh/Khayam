//
//  Dishes.swift
//  Khayam
//
//  Created by Arsalan Golestanekh on 4/24/20.
//  Copyright © 2020 Arsalan Golestanekh. All rights reserved.
//

import Foundation
import UIKit

class Dish {
    
    var image: UIImage
    var title: String
    var price: Int
    var type: String
    
    init (image: UIImage, title: String, price: Int, type: String) {
        self.image = image
        self.title = title
        self.price = price
        self.type  = type
    }
}
