//
//  People.swift
//  VMTask_MuraliSai
//
//  Created by apple on 29/07/21.
//

import Foundation


struct People: Codable {
    
    let id: String
    let avatar: String
    let firstName : String
    let lastName : String
    let createdAt : String
    let jobTitle: String
    let phone: String
    let email : String
    let favouriteColor  : String
    let longitude : Double
    let latitude : Double
    
    enum CodingKeys: String, CodingKey {
        case id
        case avatar
        case firstName
        case lastName
        case createdAt = "createdAt"
        case jobTitle
        case phone
        case email
        case favouriteColor
        case longitude
        case latitude
    }
    
    
}
