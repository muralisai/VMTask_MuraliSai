//
//  HomeViewController.swift
//  VMTask_MuraliSai
//
//  Created by apple on 26/07/21.
//

import Foundation
import UIKit

class HomeVC: BaseViewController {

    //MARK: - IBOutlet's

    @IBOutlet weak var tableview_Home: UITableView!
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setupTableviewUI()
    }
    
    //MARK: - Tableview UI
    
    func setupTableviewUI() {
        
        self.tableview_Home.tableFooterView = UIView(frame: .zero)
        
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.

    }
}


//MARK: - TableView DataSource & Delegates

extension HomeVC: UITableViewDataSource,UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let hometableviewCell = tableView.dequeueReusableCell(withIdentifier: TableViewCells.HomeCell)  else {
            return UITableViewCell()
        }
        
        switch indexPath.row {
        case 0:
            hometableviewCell.textLabel?.text = Constants.People.Peoples
            
            break
        case 1:
            hometableviewCell.textLabel?.text = Constants.Room.Rooms
            
            break
            
        default:
            
            break
        }
        
        return hometableviewCell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            performSegue(withIdentifier:SegueIdentifiers.People.rawValue , sender: nil)
            
        }
        else if indexPath.row == 1{
            performSegue(withIdentifier:SegueIdentifiers.Rooms.rawValue , sender: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40.0
    }
    
}
