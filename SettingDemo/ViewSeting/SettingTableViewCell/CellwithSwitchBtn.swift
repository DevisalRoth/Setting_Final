//
//  SearchBarTableViewCell.swift
//  SettingDemo
//
//  Created by Chou visalroth on 7/1/24.
//

import UIKit

class SearchBarTableViewCell: UITableViewCell {

    
    
    static var identifier = "SearchBarTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: "SearchBarTableViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
