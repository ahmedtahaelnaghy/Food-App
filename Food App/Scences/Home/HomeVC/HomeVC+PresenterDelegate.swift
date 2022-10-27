//
//  HomeVC+PresenterDelegate.swift
//  Food App
//
//  Created by Ahmed Taha on 21/10/2022.
//

import Foundation

extension HomeVC: HomeViewProtocol {
    func showIndicator() {
        activityIndicator.startAnimating()
    }
    
    func hideIndicator() {
        activityIndicator.stopAnimating()
    }
    
    func fetchDataSucess() {
        foodTableView.reloadData()
    }
    
    func fetchDataFailure(error: String) {
        showAlert(message: error)
    }
}
