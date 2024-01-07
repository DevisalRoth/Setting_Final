//
//  SearchBarTableViewCell.swift
//  SettingDemo
//
//  Created by Chou visalroth on 7/1/24.
//

import UIKit

class CellwithSwitchBtn: UITableViewCell {

    @IBOutlet var images: UIImageView!
    @IBOutlet var subTitleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var switchView: UISwitch!
    
    static var identifier = "CellwithSwitchBtn"
    static func nib() -> UINib{
        return UINib(nibName: "CellwithSwitchBtn", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(with models: SettingModel){
        subTitleLabel.text = models.subTitle
        descriptionLabel.text = models.description
        images.image = UIImage(named: models.imageView ?? "")
        switchView.isOn = true
    }
    
}
