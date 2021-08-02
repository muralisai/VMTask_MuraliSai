//
//  RoomTableViewCell.swift
//  VMTask_MuraliSai
//
//  Created by apple on 30/07/21.
//

import UIKit

class RoomTableViewCell: UITableViewCell {
    
    //MARK: - Variables
    var roomObj: RoomViewModel?
    
    //MARK: - IBOutlet's
    
    @IBOutlet weak var label_RoomName: UILabel!
    @IBOutlet weak var label_Occupystatus: UILabel!
    
    @IBOutlet weak var label_Maxoccupancy: UILabel!
    
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

    func setUpRoomsMainTableViewCell(roomInfo: RoomViewModel) {
        
        self.roomObj = roomInfo
        
        if let roomName = roomObj?.name {
            self.label_RoomName.text = roomName
        }
        
        if let isOccupied = roomObj?.isOccupied {
            self.label_Occupystatus.text = isOccupied ? "Occupied" : "Empty"
        }
        
        if let maxOccupancy = roomObj?.maxOccupancy {
            self.label_Maxoccupancy.text = "Max Occpancy \(maxOccupancy)"
        }
        
    }
    
}
