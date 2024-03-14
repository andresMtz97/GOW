//
//  LabelExtension.swift
//  GOW
//
//  Created by DISMOV on 13/03/24.
//

import Foundation
import UIKit

extension UILabel {
    func dynamicSize(fontName: String, forSize size: CGFloat = 17, forTextStyle: UIFont.TextStyle = .body) {
        let font = UIFont(name: "CGF Locust Resistance", size: size)
        let bodyMetrics = UIFontMetrics(forTextStyle: forTextStyle)
        self.font = bodyMetrics.scaledFont(for: font!)
        self.adjustsFontForContentSizeCategory = true
    }
}
