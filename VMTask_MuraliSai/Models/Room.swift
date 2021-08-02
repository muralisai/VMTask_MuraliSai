//
//  Room.swift
//  VMTask_MuraliSai
//
//  Created by apple on 29/07/21.
//

import Foundation

struct Room: Codable {
    
    let id: String
    let createdAt: String
    let name: String
    let maxOccupancy: Int
    let isOccupied: Bool
        
    enum CodingKeys: String, CodingKey {
        case id
        case createdAt = "created_at"
        case name
        case maxOccupancy = "max_occupancy"
        case isOccupied = "is_occupied"

    }
}
