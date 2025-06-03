//
//  AnotherLogoModels.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct AnotherLogoModels: Identifiable {
    let id = UUID()
    let imageName: String
    let backgroundColor: Color

    static func dummy() -> [AnotherLogoModels] {
        return [
            .init(imageName: "anotherLogo1", backgroundColor: Color(UIColor.appColor(.tvingAnotherLogo))),
            .init(imageName: "anotherLogo2", backgroundColor: Color(UIColor.appColor(.tvingAnotherLogo))),
            .init(imageName: "anotherLogo3", backgroundColor: Color(UIColor.appColor(.tvingAnotherLogo))),
            .init(imageName: "anotherLogo4", backgroundColor: Color(UIColor.appColor(.tvingAnotherLogo)))
        ]
    }
}
