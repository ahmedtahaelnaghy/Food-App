//
//  FoodInteractor.swift
//  Food App
//
//  Created by Ahmed Taha on 21/10/2022.
//

import Foundation
import Alamofire

class FoodInteractor {
    
    func fetchData(completion: @escaping (Result<Food, NSError>) -> (Void)) {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/categories.php") else { return }
        let request = AF.request(url, method: .get, encoding: JSONEncoding.default)
        request.response { dataResponse in
            switch dataResponse.result {
            case .success(let data):
                guard let obj = try? JSONDecoder().decode(Food.self, from: data!) else { return }
                completion(.success(obj))
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
