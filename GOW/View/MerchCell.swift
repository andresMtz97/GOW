//
//  MerchCell.swift
//  GOW
//
//  Created by DISMOV on 14/03/24.
//

import UIKit

class MerchCell: UITableViewCell {

    @IBOutlet weak var merchImage: UIImageView!
    @IBOutlet weak var merchName: UILabel!
    @IBOutlet weak var merchPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        merchName.dynamicSize(fontName: "CGF Locust Resistance")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
