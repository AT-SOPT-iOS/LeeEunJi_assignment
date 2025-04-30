//
//  UITextField+.swift
//  SOPT_assignment
//
//  Created by 이은지 on 4/22/25.
//

import UIKit.UITextField

extension UITextField {
    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 22, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
    
    func setCustomPlaceholder(text: String, textColor: UIColor, font: UIFont) {
        self.clearButtonMode = .never
        self.attributedPlaceholder = NSAttributedString(string: text, attributes: [
            .foregroundColor: textColor,
            .font: font
        ])
    }
}
