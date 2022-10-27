//
//  HomeVCPresenter.swift
//  Food App
//
//  Created by Ahmed Taha on 21/10/2022.
//

import Foundation

protocol HomeViewProtocol: AnyObject {
    func showIndicator()
    func hideIndicator()
    func fetchDataSucess()
    func fetchDataFailure(error: String)
    func navigateToFoodDetailsScreen(foodCategory: Category)
}

protocol FoodCellViewProtocol {
    func displayImage(image: String)
    func displayName(name: String)
}

class HomeVCPresenter {
    
    private weak var view: HomeViewProtocol?
    private let interactor = FoodInteractor()
    private var foodCategory = [Category]()
    
    init(view: HomeViewProtocol) {
        self.view = view
    }
    
    func viewDidLoad() {
        getFood()
    }
    
    func getFood() {
        view?.showIndicator()
        interactor.fetchData { [weak self] result in
            guard let self = self else { return }
            self.view?.hideIndicator()
            switch result {
            case .success(let data):
                self.foodCategory = data.categories
                self.view?.fetchDataSucess()
            case .failure(let error):
                self.view?.fetchDataFailure(error: error.localizedDescription)
            }
        }
    }
    
    func getFoodCount() -> Int {
        return foodCategory.count
    }
    
    func configureCell(cell: FoodCellViewProtocol, index: Int) {
        let food = foodCategory[index]
        cell.displayImage(image: food.image)
        cell.displayName(name: food.name)
    }
    
    func didSelectRow(index: Int) {
        let food = foodCategory[index]
        view?.navigateToFoodDetailsScreen(foodCategory: food)
    }
}
