//
//  DishProfileViewController.swift
//  Khayam
//
//  Created by Arsalan Golestanekh on 5/12/20.
//  Copyright © 2020 Arsalan Golestanekh. All rights reserved.
//

import UIKit

class DishProfileViewController: UIViewController {
    
    @IBOutlet weak var dishDescription: UITextView!
    @IBOutlet weak var dishImage: UIImageView!
    
    var dish:Dish?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dishImage.image = dish?.image
        
    }
    
}

