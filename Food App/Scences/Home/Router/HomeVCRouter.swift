//
//  FoodVCRouter.swift
//  Food App
//
//  Created by Ahmed Taha on 24/10/2022.
//

import UIKit

class HomeVCRouter {
    
    class func creatFoodVC() -> UIViewController {
        let homeVC = HomeVC(nibName: "HomeVC", bundle: nil)
        let router = HomeVCRouter()
        let interactor = FoodInteractor()
        let presenter = HomeVCPresenter(view: homeVC, interactor: interactor, router: router)
        homeVC.presenter = presenter
        return homeVC
    }
    
    func navigateToFoodDetailsScreen(foodCategory: Category) {
        print("Ok")
    }    
    
}
