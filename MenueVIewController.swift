//
//  MenueVIewController.swift
//  Khayam
//
//  Created by Arsalan Golestanekh on 4/24/20.
//  Copyright © 2020 Arsalan Golestanekh. All rights reserved.
//

import UIKit

class MenueViewController: UIViewController {

    @IBOutlet weak var menueSelector: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalSumButton: UIBarButtonItem!
    
    var dishes: [Dish] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        
        dishes = createArray()
        menueSelector.setTitle("Основные Блюда", forSegmentAt: 0)
        menueSelector.setTitle("Салаты", forSegmentAt: 1)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .white
        navigationItem.title = "Меню"
        
      /*  menueSelector.setTitle("Основные Блюда", forSegmentAt: 0)
        menueSelector.setTitle("Салаты", forSegmentAt: 1)
        menueSelector.setTitle("Напитки", forSegmentAt: 2)
        */
        
    }
    
    
    func createArray() -> [Dish] {
        
        var tempDishes: [Dish] = []
        
        let dish1 = Dish(image: UIImage.init(named: "plovKebab")!, title: "Плов Кебаб", price: 169, type: "Основные Блюда")
        let dish2 = Dish(image: UIImage.init(named: "plovKebabShafran")!, title: "Плов Кебаб Шафран", price: 169, type: "Основные Блюда")
        let dish3 = Dish(image: UIImage.init(named: "plovKebabSultani")!, title: "Плов Кебаб Султани", price: 169, type: "Основные Блюда")
        let dish4 = Dish(image: UIImage.init(named: "1000iland")!, title: "1000 Островов", price: 132, type: "Салаты")

        tempDishes.append(dish1)
        tempDishes.append(dish2)
        tempDishes.append(dish3)
        tempDishes.append(dish4)
        
        return tempDishes
    }

}
extension MenueViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dish = dishes[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: "MenueCell") as! MenueCell
        cell.setDish(dish: dish)
        
        
        return cell
    }
}

