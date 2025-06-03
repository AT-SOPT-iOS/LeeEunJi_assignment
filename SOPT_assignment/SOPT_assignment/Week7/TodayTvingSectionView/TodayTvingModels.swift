//
//  TodayTvingModels.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct TodayTvingModels: Identifiable {
    let id = UUID()
    let rankLabel: String
    let imageName: String

    var image: Image {
        Image(imageName)
    }

    static func dummy() -> [TodayTvingModels] {
        return (1...20).map {
            TodayTvingModels(rankLabel: "\($0)", imageName: "todayTvingImage\($0 % 10 == 0 ? 10 : $0 % 10)")
        }
    }
}
