//
//  HomeVM.swift
//  spesolutiontest
//
//  Created by Ahmad Syauqi Albana on 22/07/22.
//

import Foundation
import Alamofire
import SwiftyJSON
import RxSwift
import RxCocoa

class HomeVM {
    var news = BehaviorRelay<NewsModel?>(value: nil)
    var error = BehaviorRelay<String?>(value: nil)
    
    func getNews() {
        let url = ApiCollection.newsList()
        AF.request(url, method: .get, encoding: JSONEncoding.default)
            .responseData { responseData in
                guard let response = responseData.response, let data = responseData.value else {
                    print(url, "=", responseData.response?.statusCode ?? "")
                    return
                }
                print(url, "=", response.statusCode)
                
                guard let jsonResult = try? JSON(data: data) else {
                    print("Failed Load Data")
                    return
                }
                switch responseData.result {
                case .success( _):
                    switch response.statusCode{
                    case 200:
                        let data = NewsModel(jsonResult)
                        self.news.accept(data)
                    default:
                        self.error.accept("Failed Load Data")
                    }
                case .failure(let error) :
                    self.error.accept(error.localizedDescription)
                }
            }
    }
}
