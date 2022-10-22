//
//  HomeVC+TableView.swift
//  Food App
//
//  Created by Ahmed Taha on 21/10/2022.
//

import UIKit

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func setupTableView() {
        foodTableView.delegate = self
        foodTableView.dataSource = self
        foodTableView.register(UINib(nibName: "FoodCell", bundle: nil), forCellReuseIdentifier: "FoodCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getFoodCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell") as! FoodCell
        presenter.configureCell(cell: cell, index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
