//
//  MenueCell.swift
//  Khayam
//
//  Created by Arsalan Golestanekh on 4/24/20.
//  Copyright © 2020 Arsalan Golestanekh. All rights reserved.
//

import UIKit
import Foundation

class MenueCell: UITableViewCell {
    
    @IBOutlet weak var menueImageView: UIImageView!
    @IBOutlet weak var dishNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    func setDish(dish: Dish) {
        menueImageView.image = dish.image
        dishNameLabel.text = dish.title
        priceLabel.text = "\(String(dish.price)) грн"
    }
}
