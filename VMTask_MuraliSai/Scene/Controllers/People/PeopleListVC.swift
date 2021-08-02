//
//  PeopleViewController.swift
//  VMTask_MuraliSai
//
//  Created by apple on 29/07/21.
//

import UIKit
import Foundation

class PeopleListVC: BaseViewController {
    
    //MARK: - Variables
    
    private var peoplesListVM : PeopelsListViewModal!
    
    //MARK: - IBOutlet's
    
    @IBOutlet weak var tableview_Peoples: UITableView!
    
    
    // MARK: - View Model
    
    
    func callToViewModelForUIUpdate(){
        
        
        self.peoplesListVM =  PeopelsListViewModal()
        self.peoplesListVM.bindEmployeeViewModelToController = {
            
            DispatchQueue.main.async {
                self.tableview_Peoples.reloadData()
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
        
        self.tableview_Peoples.tableFooterView = UIView(frame: .zero)
        
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

extension PeopleListVC: UITableViewDataSource,UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  self.peoplesListVM.peoples.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let peopleCell = tableView.dequeueReusableCell(withIdentifier: TableViewCells.PeoplesScreen.PeopleCell) as? PeopleTableViewCell else {
            return UITableViewCell()
        }
        
        let peopleInfo = self.peoplesListVM.peoples[indexPath.row]
        
        peopleCell.setUpPeoplMainTableViewCell(peopleInfo: peopleInfo)
        
        return peopleCell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180.0
    }
}
