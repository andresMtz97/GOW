//
//  WeaponsCell.swift
//  GOW
//
//  Created by Developer on 09/03/24.
//

import UIKit

class WeaponsCell: UITableViewCell {

    @IBOutlet weak var weaponName: UILabel!
    @IBOutlet weak var weaponImage: UIImageView!
    @IBOutlet weak var weaponDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        weaponName.dynamicSize(fontName: "CGF Locust Resistance")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        contentView.backgroundColor = UIColor(named: "GOWBlack1")
    }

}
