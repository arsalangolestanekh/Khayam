//
//  ViewController.swift
//  Khayam
//
//  Created by Arsalan Golestanekh on 4/24/20.
//  Copyright © 2020 Arsalan Golestanekh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hayyamImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setMainMenueImage()
    }
    
    func setMainMenueImage() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "turezkiyOgurez")!)
        self.hayyamImage.image = UIImage(named: "khayyam")
        self.view.insertSubview(hayyamImage, at: 0)

    }
    
    @IBAction func showMenue(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "MenueViewController") as? MenueViewController else { return }
            self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func showSale(_ sender: Any) {
            guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "SaleViewController") as? SaleViewController else { return }
                self.navigationController?.pushViewController(vc, animated: true)
        }
    
    @IBAction func showBanquets(_ sender: Any) {
    }
    
}

