//
//  SettingTableViewCell.swift
//  SettingDemo
//
//  Created by Pheayuth's iMac on 3/1/24.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var images: UIImageView!
    
    @IBOutlet weak var subTitleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var view: UIView!
    
    static var identifier = "SettingTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: "SettingTableViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configuration( models: SettingModel){
        self.images.image = UIImage(named: models.imageView ?? "" )
        self.subTitleLabel.text = models.subTitle
        self.descriptionLabel.text = models.description
    }
    
}
