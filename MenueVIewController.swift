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
    
    var dishes: [Dish] = []
    let menuePhoto = ["plovKebabShafran", "plovKebabShafran", "plovKebabSultani", "1000iland", "dolma", "gorme", "pide", "rubin", "baloniessa", "carbonara"]

    var totalSum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        
        dishes = createArray()
        menueSelector.setTitle("Основные Блюда", forSegmentAt: 0)
        menueSelector.setTitle("Салаты", forSegmentAt: 1)

        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .white
        navigationItem.title = "Меню"
        
    }
    
    @IBAction func filterDish(_ sender: UISegmentedControl) {
        let filterWords = ["Основные Блюда", "Салаты"]
        dishes = createArray().filter { (dish) -> Bool in
            dish.type.contains(filterWords[(sender as AnyObject).selectedSegmentIndex])
        }
        tableView.reloadData()
    }
    
    func createArray() -> [Dish] {
        
        var tempDishes: [Dish] = []
        
        let dish1 = Dish(image: UIImage.init(named: menuePhoto[0])!, title: "Плов Кебаб", price: 169, type: "Основные Блюда", dishStruct: "Очень вкусно, нужно обязательно попробовать")
        let dish2 = Dish(image: UIImage.init(named: menuePhoto[1])!, title: "Плов Кебаб Шафран", price: 169, type: "Основные Блюда", dishStruct: "Очень вкусно, нужно обязательно попробовать")
        let dish3 = Dish(image: UIImage.init(named: menuePhoto[2])!, title: "Плов Кебаб Султани", price: 169, type: "Основные Блюда", dishStruct: "Очень вкусно, нужно обязательно попробовать")
        let dish4 = Dish(image: UIImage.init(named: menuePhoto[3])!, title: "1000 Островов", price: 132, type: "Салаты", dishStruct: "Очень вкусно, нужно обязательно попробовать")
        let dish5 = Dish(image: UIImage.init(named: menuePhoto[4])!, title: "Долма Королевская", price: 99, type: "Основные Блюда", dishStruct: "Очень вкусно, нужно обязательно попробовать")
        let dish6 = Dish(image: UIImage.init(named: menuePhoto[5])!, title: "Плов Горме Сабзи", price: 129, type: "Основные Блюда", dishStruct: "Очень вкусно, нужно обязательно попробовать")
        let dish7 = Dish(image: UIImage.init(named: menuePhoto[6])!, title: "Пиде", price: 129, type: "Основные Блюда", dishStruct: "Очень вкусно, нужно обязательно попробовать")
        let dish8 = Dish(image: UIImage.init(named: menuePhoto[7])!, title: "Салат Рубин", price: 119, type: "Салаты", dishStruct: "Очень вкусно, нужно обязательно попробовать")
        let dish9 = Dish(image: UIImage.init(named: menuePhoto[8])!, title: "Паста Балоньеза", price: 119, type: "Основные Блюда", dishStruct: "Очень вкусно, нужно обязательно попробовать")
        let dish10 = Dish(image: UIImage.init(named: menuePhoto[9])!, title: "Паста Карбонара", price: 129, type: "Основные Блюда", dishStruct: "Очень вкусно, нужно обязательно попробовать")


        tempDishes.append(dish1)
        tempDishes.append(dish2)
        tempDishes.append(dish3)
        tempDishes.append(dish4)
        tempDishes.append(dish5)
        tempDishes.append(dish6)
        tempDishes.append(dish7)
        tempDishes.append(dish8)
        tempDishes.append(dish9)
        tempDishes.append(dish10)

        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let dish = dishes[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        guard let vc = sb.instantiateViewController(withIdentifier: "DishProfileViewController") as? DishProfileViewController else { return }
        vc.image = dish.image
        vc.dishStruct = dish.dishStruct
        vc.name = dish.title
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

