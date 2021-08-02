//
//  RoomViewModel.swift
//  VMTask_MuraliSai
//
//  Created by apple on 29/07/21.
//

import Foundation

struct RoomViewModel {
    let room: Room
}

extension RoomViewModel {
    
    var id: String {
        return self.room.id
    }
    
    var createdAt: String {
        return self.room.createdAt
    }
    var name: String {
        return self.room.name.uppercased()
    }
    var maxOccupancy: Int {
        return self.room.maxOccupancy
    }
    var isOccupied: Bool {
        return self.room.isOccupied
    }
    
}
