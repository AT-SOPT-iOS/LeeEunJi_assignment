//
//  AnotherLogoModel.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit

struct AnotherLogoModel {
    let anotherLogo: UIImage
    let backgroundColor: UIColor
}

extension AnotherLogoModel {
    static func dummy() -> [AnotherLogoModel] {
        return [
            AnotherLogoModel(anotherLogo: .anotherLogo1, backgroundColor: UIColor.appColor(.tvingAnotherLogo)),
            AnotherLogoModel(anotherLogo: .anotherLogo2, backgroundColor: UIColor.appColor(.tvingAnotherLogo)),
            AnotherLogoModel(anotherLogo: .anotherLogo3, backgroundColor: UIColor.appColor(.tvingAnotherLogo)),
            AnotherLogoModel(anotherLogo: .anotherLogo4, backgroundColor: UIColor.appColor(.tvingAnotherLogo)),
        ]
    }
}
