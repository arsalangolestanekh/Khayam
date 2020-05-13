//
//  DishProfileViewController.swift
//  Khayam
//
//  Created by Arsalan Golestanekh on 5/12/20.
//  Copyright © 2020 Arsalan Golestanekh. All rights reserved.
//

import UIKit

class DishProfileViewController: UIViewController {
    
    @IBOutlet weak var dishName: UILabel!
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var dishDescription: UITextView!
    
    var image = UIImage()
    var dishStruct = ""
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        dishDescription.text = dishStruct
        dishImage.image = image
        dishName.text = name
    }
    
}

