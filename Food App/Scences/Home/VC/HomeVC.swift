//
//  HomeVC.swift
//  Food App
//
//  Created by Ahmed Taha on 21/10/2022.
//

import UIKit
import NVActivityIndicatorView

class HomeVC: UIViewController {
    
//    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var foodTableView: UITableView!
    @IBOutlet weak var activityIndicator: NVActivityIndicatorView!
    
    var presenter: HomeVCPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        activityIndicator.type = .circleStrokeSpin
        navigationItem.hidesBackButton = true
        navigationItem.title = "Food"
        presenter = HomeVCPresenter(view: self)
        presenter.viewDidLoad()
    }
    
    
    
}
