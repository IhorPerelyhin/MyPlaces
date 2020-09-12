//
//  ViewController.swift
//  MyPlaces
//
//  Created by Ihor Perelyhin on 06.09.2020.
//  Copyright © 2020 Ihor Perelyhin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let restaurantNames = ["hanami", "фора", "kfc", "McDonalds", "АТБ", "Экомаркет", "море пива", "ALCOMAG", "Beer Market"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomTableViewCell
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.imageRestaurant.image = UIImage(named: restaurantNames[indexPath.row])
        cell.imageRestaurant.layer.cornerRadius = cell.imageRestaurant.frame.size.height / 2
        cell.imageRestaurant.clipsToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}

