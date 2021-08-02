//
//  PeopelsListViewModal.swift
//  VMTask_MuraliSai
//
//  Created by apple on 31/07/21.
//

import UIKit

class PeopelsListViewModal: NSObject {
    
    override init() {
        super.init()
        load()
    }
    
    private(set) var peoples : [PeopleViewModel] = [] {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    
    var bindEmployeeViewModelToController : (() -> ()) = {}
    
    func load() {
        return fetchPeoples()
    }
    
    private func fetchPeoples() {
        
        guard let peoplesURL = URL(string: Configuration.baseURL + APIEndpoint.people.rawValue) else {
            fatalError("URL is not correct")
        }
        
        let resource = Resource<[People]>(url: peoplesURL)
        
        Webservice().load(resource: resource) { [weak self] result in
            
            switch result {
            case .success(let rooms):
                self?.peoples = rooms.map(PeopleViewModel.init)
            case .failure(let error):
                print(error)
            }
            
        }
    }
    
}
