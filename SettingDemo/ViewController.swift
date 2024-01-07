//
//  ViewController.swift
//  SettingDemo
//
//  Created by Pheayuth's iMac on 3/1/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    var dataVM = VMSetting()
    @IBOutlet var  tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(SettingTableViewCell.nib(), forCellReuseIdentifier: SettingTableViewCell.identifier)
        tableView.register(CellwithSwitchBtn.nib(), forCellReuseIdentifier: CellwithSwitchBtn.identifier)
        tableView.register(Cell.nib(), forCellReuseIdentifier: Cell.identifier)
        dataVM.initData()
        tableView.backgroundColor = .clear
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataVM.containerData.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
            let rowType = dataVM.containerData[section].rowType
            switch rowType {
            case .EMPTY:
                return 0
                
            case .PROFILE :
                return dataVM.profile.count
 
            case .NETWORK:
                return dataVM.networkData.count
                
            case .SOUND:
                return dataVM.soundData.count
                
            default: return 0
            }
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let rowType = dataVM.containerData[indexPath.section].rowType
            
            let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.identifier, for: indexPath) as! SettingTableViewCell
           let cell1 = tableView.dequeueReusableCell(withIdentifier: CellwithSwitchBtn.identifier, for: indexPath) as! CellwithSwitchBtn
        let cell2 = tableView.dequeueReusableCell(withIdentifier: Cell.identifier, for: indexPath) as! Cell
            switch rowType {
            case .EMPTY:
                return UITableViewCell()
            case .PROFILE:
                
                cell.configuration(models: dataVM.profile[indexPath.row])
                return cell
    
            case .NETWORK:
                if indexPath.row == 0 {
                    cell1.configure(with: dataVM.networkData[indexPath.row])
                    return cell1
                }else{
                    cell2.configuration(with: dataVM.networkData[indexPath.row])
                    return cell2
                }
                
            case .SOUND:
                cell2.configuration(with: dataVM.soundData[indexPath.row])
                return cell2
             
            default : return UITableViewCell()
//            }
        }
       
    }
    


}

