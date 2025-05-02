//
//  GaHyeonFavoriteModel.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit

struct GaHyeonFavoriteModel {
    let gahyeonFavoriteImage: UIImage
}

extension GaHyeonFavoriteModel {
    static func dummy() -> [GaHyeonFavoriteModel] {
        return [
            GaHyeonFavoriteModel(gahyeonFavoriteImage: .popularImage2),
            GaHyeonFavoriteModel(gahyeonFavoriteImage: .popularImage3),
            GaHyeonFavoriteModel(gahyeonFavoriteImage: .popularImage4),
            GaHyeonFavoriteModel(gahyeonFavoriteImage: .popularImage6),
            GaHyeonFavoriteModel(gahyeonFavoriteImage: .popularImage1),
        ]
    }
}
