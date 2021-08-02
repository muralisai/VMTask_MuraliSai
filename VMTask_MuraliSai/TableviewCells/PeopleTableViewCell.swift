//
//  PeopleTableViewCell.swift
//  VMTask_MuraliSai
//
//  Created by apple on 30/07/21.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {

    //MARK: - Variables
    var peopleObj: PeopleViewModel?

    //MARK: - IBOutlet's

    @IBOutlet weak var imageView_avatar: UIImageView!
    @IBOutlet weak var label_EmployeeName: UILabel!
    
    @IBOutlet weak var label_JobTitle: UILabel!
    @IBOutlet weak var label_Email: UILabel!
    
    @IBOutlet weak var label_Phonenumber: UILabel!
    
    //MARK: - Initialization

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - Fill Info

    func setUpPeoplMainTableViewCell(peopleInfo: PeopleViewModel) {
        
        self.peopleObj = peopleInfo
        
        if let roomName = peopleObj?.name {
            self.label_EmployeeName.text = roomName
        }
        
        if let phoneNumber = peopleObj?.phoneNumber {
            self.label_Phonenumber.text = phoneNumber
        }
        
        if let email = peopleObj?.emailAddress {
            self.label_Email.text = email
        }
        if let jobTitle = peopleObj?.jobTitle {
            self.label_JobTitle.text = jobTitle
        }
        
        if let avatar = peopleObj?.avatar {
            
            guard let url = URL(string: avatar) else { return  }
            self.imageView_avatar.load(url: url)
        }
    }

}
