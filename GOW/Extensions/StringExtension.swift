//
//  StringExtension.swift
//  GOW
//
//  Created by Developer on 09/03/24.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func localized(WithComment comment: String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
