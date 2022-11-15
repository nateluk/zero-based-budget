//
//  NetworkManager.swift
//  zero-based-budget
//
//  Created by Nathan Luk on 15/11/2022.
//

import Apollo
import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let graphEndpoint = "http://localhost:8080/v1/graphql"
    
    lazy var apollo = ApolloClient(url: URL(string: graphEndpoint)!)
    private init() {
        
    }
}
