//
//  SplashVC.swift
//  Food App
//
//  Created by Ahmed Taha on 21/10/2022.
//

import UIKit

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        goToHomeVC()
    }
    
    func goToHomeVC() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.navigationController?.pushViewController(HomeVC(), animated: true)
        }
    }
}
