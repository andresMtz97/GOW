//
//  MenuOptionCell.swift
//  GOW
//
//  Created by Developer on 08/03/24.
//

import UIKit

class MenuOptionCell: UITableViewCell {

    @IBOutlet weak var optionLabel: UILabel!
    @IBOutlet weak var optionImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        optionLabel.dynamicSize(fontName: "CGF Locust Resistance")
//        let myFont = UIFont(name: "CGF Locust Resistance", size: 17)
//        let bodyMetrics = UIFontMetrics(forTextStyle: .body)
//        optionLabel.font = bodyMetrics.scaledFont(for: myFont!)
//        optionLabel.adjustsFontForContentSizeCategory = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if selected {
            contentView.backgroundColor = UIColor(named: "GOWBlack2")
        } else {
            contentView.backgroundColor = UIColor(named: "GOWBlack1")
        }
    }

}
