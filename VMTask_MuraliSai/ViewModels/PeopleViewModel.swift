//
//  PeopleViewModel.swift
//  VMTask_MuraliSai
//
//  Created by apple on 29/07/21.
//

import Foundation
import UIKit

struct PeopleViewModel {
    let people: People
}

extension PeopleViewModel {
    
    var id: String {
        return self.people.id
    }
    var name: String {
        return self.people.firstName + self.people.lastName
    }
    var createdAt: String {
        return self.people.createdAt
    }
    var firstName: String {
        return self.people.firstName
    }
    var lastName: String {
        return self.people.lastName
    }
    var jobTitle: String {
        return self.people.jobTitle
    }
    var phoneNumber: String {
        return self.people.phone
    }    
    var emailAddress: String {
        return self.people.email
    }
    var favouriteColor: String{
        return self.people.favouriteColor
    }
    var longitude: Double {
        return self.people.longitude
    }
    var latitude: Double {
        return self.people.longitude
    }
    var avatar: String {
        return self.people.avatar
    }
    
}



