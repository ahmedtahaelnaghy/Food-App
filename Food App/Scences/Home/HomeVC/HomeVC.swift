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
        setupNavigation()
        search()
        setupIndicator(for: activityIndicator)
        presenter = HomeVCPresenter(view: self)
        presenter.viewDidLoad()
    }
    
    func setupNavigation() {
        navigationItem.hidesBackButton = true
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Food"
    }
    
    func search() {
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        self.navigationItem.searchController = search
    }
}

extension HomeVC: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print(#function)
    }
}
