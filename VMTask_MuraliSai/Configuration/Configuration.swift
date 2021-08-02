//
//  Configuration.swift
//  VMTask_MuraliSai
//
//  Created by apple on 02/08/21.
//

import Foundation

enum Configuration: String {
    
    // MARK: - Configurations
    
    case staging
    case production
    case release
    
    
    // MARK: - Current Configuration
    
    static let current: Configuration = {
        guard let rawValue = Bundle.main.infoDictionary?["Configuration"] as? String else {
            fatalError("No Configuration Found")
        }
        
        guard let configuration = Configuration(rawValue: rawValue.lowercased()) else {
            fatalError("Invalid Configuration")
        }
        
        return configuration
    }()
    
    // MARK: - Base URL
    
    static var baseURL: String {
        
        switch current {
        case .staging:
            return  "https://5f7c2c8400bd74001690a583.mockapi.io/api/v1/"
        case .production, .release:
            return "https://5f7c2c8400bd74001690a583.mockapi.io/api/v1/"
        }
    }
    
    
    
}
