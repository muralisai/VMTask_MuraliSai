//
//  RoomsListViewModal.swift
//  VMTask_MuraliSai
//
//  Created by apple on 29/07/21.
//

import UIKit

class RoomsListViewModal: NSObject {    
    
    override init() {
        
        super.init()
        load()
        
    }
    
    private(set) var rooms : [RoomViewModel] = [] {
        didSet {
            self.bindRoomsViewModelToController()
        }
    }
    
    var bindRoomsViewModelToController : (() -> ()) = {}
    
    func load() {
        return fetchRooms()
    }
    
    private func fetchRooms() {
        
        guard let roomsURL = URL(string: Configuration.baseURL + APIEndpoint.rooms.rawValue) else {
            fatalError("URL is not correct")
        }
        
        let resource = Resource<[Room]>(url: roomsURL)
        
        Webservice().load(resource: resource) { [weak self] result in
            
            switch result {
            case .success(let rooms):
                self?.rooms = rooms.map(RoomViewModel.init)
            case .failure(let error):
                print(error)
                self?.rooms = [RoomViewModel]()
            }
            
        }
        
    }
    
}
