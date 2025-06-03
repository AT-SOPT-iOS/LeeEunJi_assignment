//
//  PopularLiveModel.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct PopularLiveModels: Identifiable {
    let id = UUID()
    let imageName: String
    let rank: String
    let title: String
    let subtitle: String
    let percent: String

    static func dummy() -> [PopularLiveModels] {
        return [
            .init(imageName: "popularImage1", rank: "1", title: "JTBC", subtitle: "환승연애 4화", percent: "27.2%"),
            .init(imageName: "popularImage2", rank: "2", title: "별들에게 물어봐", subtitle: "48화", percent: "24.1%"),
            .init(imageName: "popularImage3", rank: "3", title: "사랑의 불시착", subtitle: "1화", percent: "20.7%"),
            .init(imageName: "popularImage4", rank: "4", title: "뿡뿡지구오락실", subtitle: "12화", percent: "10.9%"),
            .init(imageName: "popularImage5", rank: "5", title: "슬의생", subtitle: "8화", percent: "3.13%"),
            .init(imageName: "popularImage6", rank: "6", title: "이혼숙려캠프", subtitle: "20화", percent: "2.0%")
        ]
    }
}
