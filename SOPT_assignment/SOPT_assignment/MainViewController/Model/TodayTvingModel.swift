//
//  TodayTvingModel.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit

struct TodayTvingModel {
    let rankLabel: String
    let image: UIImage
}

extension TodayTvingModel {
    static func dummy() -> [TodayTvingModel] {
        return [
            TodayTvingModel(rankLabel: "1", image: .todayTvingImage1),
            TodayTvingModel(rankLabel: "2", image: .todayTvingImage2),
            TodayTvingModel(rankLabel: "3", image: .todayTvingImage3),
            TodayTvingModel(rankLabel: "4", image: .todayTvingImage4),
            TodayTvingModel(rankLabel: "5", image: .todayTvingImage5),
            TodayTvingModel(rankLabel: "6", image: .todayTvingImage6),
            TodayTvingModel(rankLabel: "7", image: .todayTvingImage7),
            TodayTvingModel(rankLabel: "8", image: .todayTvingImage8),
            TodayTvingModel(rankLabel: "9", image: .todayTvingImage9),
            TodayTvingModel(rankLabel: "10", image: .todayTvingImage10),
            TodayTvingModel(rankLabel: "11", image: .todayTvingImage1),
            TodayTvingModel(rankLabel: "12", image: .todayTvingImage2),
            TodayTvingModel(rankLabel: "13", image: .todayTvingImage3),
            TodayTvingModel(rankLabel: "14", image: .todayTvingImage4),
            TodayTvingModel(rankLabel: "15", image: .todayTvingImage5),
            TodayTvingModel(rankLabel: "16", image: .todayTvingImage6),
            TodayTvingModel(rankLabel: "17", image: .todayTvingImage7),
            TodayTvingModel(rankLabel: "18", image: .todayTvingImage8),
            TodayTvingModel(rankLabel: "19", image: .todayTvingImage9),
            TodayTvingModel(rankLabel: "20", image: .todayTvingImage10),
        ]
    }
}
