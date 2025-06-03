//
//  GaHyeonFavoriteModels.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct GaHyeonFavoriteModels: Identifiable {
    let id = UUID()
    let imageName: String

    static func dummy() -> [GaHyeonFavoriteModels] {
        return [
            .init(imageName: "popularImage2"),
            .init(imageName: "popularImage3"),
            .init(imageName: "popularImage4"),
            .init(imageName: "popularImage6"),
            .init(imageName: "popularImage1")
        ]
    }
}
