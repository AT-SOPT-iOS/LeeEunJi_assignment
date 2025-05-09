//
//  PopularLiveModel.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit

struct PopularLiveModel {
    let popularImage: UIImage
    let rankLabel: String
    let titleLabel: String
    let subtitleLabel: String
    let percentLabel: String
}

extension PopularLiveModel {
    static func dummy() -> [PopularLiveModel] {
        return [
            PopularLiveModel(popularImage: .popularImage1, rankLabel: "1", titleLabel: "JTBC", subtitleLabel: "환승연애 4화", percentLabel: "27.2%"),
            PopularLiveModel(popularImage: .popularImage2, rankLabel: "2", titleLabel: "별들에게 물어봐", subtitleLabel: "48화", percentLabel: "24.1%"),
            PopularLiveModel(popularImage: .popularImage3, rankLabel: "3", titleLabel: "사랑의 불시착", subtitleLabel: "1화", percentLabel: "20.7%"),
            PopularLiveModel(popularImage: .popularImage4, rankLabel: "4", titleLabel: "뿡뿡지구오락실", subtitleLabel: "12화", percentLabel: "10.9%"),
            PopularLiveModel(popularImage: .popularImage5, rankLabel: "5", titleLabel: "슬의생", subtitleLabel: "8화", percentLabel: "3.13%"),
            PopularLiveModel(popularImage: .popularImage6, rankLabel: "6", titleLabel: "이혼숙려캠프", subtitleLabel: "20화", percentLabel: "2.0%"),
        ]
    }
}
