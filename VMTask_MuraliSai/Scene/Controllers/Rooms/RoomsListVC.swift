//
//  RoomsViewController.swift
//  VMTask_MuraliSai
//
//  Created by apple on 29/07/21.
//

import UIKit
import Foundation

class RoomsListVC: BaseViewController {
    
    //MARK: - Variables
    
    private var roomListVM : RoomsListViewModal!
    private var rooms = [RoomViewModel]()  
    
    //MARK: - IBOutlet's
    
    @IBOutlet weak var tableview_Rooms: UITableView!
    
    // MARK: - View Model
    
    func callToViewModelForUIUpdate(){
        
        self.roomListVM =  RoomsListViewModal()
        self.roomListVM.bindRoomsViewModelToController = {
           
            DispatchQueue.main.async {
                self.tableview_Rooms.reloadData()
            }
            
        }
    }
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        callToViewModelForUIUpdate()
        
        setupTableviewUI()
        
    }
    
    //MARK: - Tableview UI
    
    func setupTableviewUI() {
        self.tableview_Rooms.tableFooterView = UIView(frame: .zero)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

//MARK: - TableView DataSource & Delegates

extension RoomsListVC: UITableViewDataSource,UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  (self.roomListVM.rooms.count != 0) ? self.roomListVM.rooms.count : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let roomcell = tableView.dequeueReusableCell(withIdentifier: TableViewCells.RoomsScreen.RoomCell) as? RoomTableViewCell else {
            return UITableViewCell()
        }
        
        let roomInfo = self.roomListVM.rooms[indexPath.row]
        
        roomcell.setUpRoomsMainTableViewCell(roomInfo: roomInfo)
        
        
        return roomcell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
}
