//
//  Cell.swift
//  SettingDemo
//
//  Created by Chou visalroth on 7/1/24.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet var subTitleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var images: UIImageView!
    @IBOutlet var status: UILabel!
    static var identifier = "Cell"
    static func nib() -> UINib{
        return UINib(nibName: "Cell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func configuration(with models: SettingModel){
        self.subTitleLabel.text = models.subTitle
        self.descriptionLabel.text = models.description
        self.images.image = UIImage(named: models.imageView ?? "")
        self.status.text = models.status
    }
    
}
