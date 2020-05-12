//
//  OrderViewController.swift
//  Khayam
//
//  Created by Arsalan Golestanekh on 5/11/20.
//  Copyright © 2020 Arsalan Golestanekh. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var commentsTextView: UITextView!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    var totalPrice: MenueViewController?
    var sum:Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.gray
        firstNameField.placeholder = "Введите имя"
        lastNameField.placeholder = "Введите фамилию"
        phoneNumberField.placeholder = "Введите номер телефона"
        
        if let price = sum {
            
            //totalPriceLabel.text = String(totalPrice?.totalSum)
            
        }
    }
    
    func getSum() {
        
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
