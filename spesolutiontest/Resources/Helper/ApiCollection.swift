//
//  ApiCollection.swift
//  spesolutiontest
//
//  Created by Ahmad Syauqi Albana on 22/07/22.
//

import Foundation
import Alamofire

struct ApiCollection {
    static let base = "https://newsapi.org/v2/"
    static let apiKey = "613defc6bf4a42c889f5c9fec68a95a0"
    
    static func newsList() -> String {
        return "\(base)/top-headlines?country=id&apiKey=\(ApiCollection.apiKey)"
    }
    
}
