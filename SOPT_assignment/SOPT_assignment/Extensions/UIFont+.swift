//
//  UIFont+.swift
//  SOPT_assignment
//
//  Created by 이은지 on 4/18/25.
//

import UIKit.UIFont

public enum FontAsset {
    case pretendardRegular
    case pretendardMedium
    case pretendardSemiBold
    case pretendardBold
}

extension UIFont {
    static func appFont(_ name: FontAsset, size: Int) -> UIFont {
        let fontSize = CGFloat(size)
        switch name {
        case .pretendardRegular:    // 400
            return UIFont(name: "Pretendard-Regular", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
        case .pretendardMedium:     // 500
            return UIFont(name: "Pretendard-Medium", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
        case .pretendardSemiBold:   // 600
            return UIFont(name: "Pretendard-SemiBold", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
        case .pretendardBold:       // 700
            return UIFont(name: "Pretendard-Bold", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
        }
    }
}
