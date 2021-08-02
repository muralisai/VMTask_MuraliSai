//
//  StoryboardConstants.swift
//  VMTask_MuraliSai
//
//  Created by apple on 29/07/21.
//

import Foundation
import UIKit


struct Storyboards {
    
    static let Main = UIStoryboard(name: "Main", bundle: nil)
    
    struct Controllers {
        
        static let peopleController = "PeopleController"
        static let roomsViewController = "RoomsController"
        
    }
}

struct TableViewCells {
    
    static let HomeCell = "Cell"
    
    struct RoomsScreen {
        static let RoomCell = "RoomCell"
    }
    
    struct PeoplesScreen {
        static let PeopleCell = "PeopleCell"
    }
    
}

enum SegueIdentifiers: String {
    
    case People = "PeopleViewController"
    case Rooms = "RoomsViewController"
    
}
