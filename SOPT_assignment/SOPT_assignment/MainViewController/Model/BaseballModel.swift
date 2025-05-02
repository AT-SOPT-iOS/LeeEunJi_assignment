//
//  BaseballModel.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit

struct BaseballModel {
    let baseballImage: UIImage
    let backgroundImage: UIImage
}

extension BaseballModel {
    static func dummy() -> [BaseballModel] {
        return [
            BaseballModel(baseballImage: .baseballImage1, backgroundImage: .whiteBackground),
            BaseballModel(baseballImage: .baseballImage2, backgroundImage: .blackBackground),
            BaseballModel(baseballImage: .baseballImage3, backgroundImage: .whiteBackground),
            BaseballModel(baseballImage: .baseballImage4, backgroundImage: .blackBackground),
            BaseballModel(baseballImage: .baseballImage5, backgroundImage: .whiteBackground),
            BaseballModel(baseballImage: .baseballImage6, backgroundImage: .blackBackground),
            BaseballModel(baseballImage: .baseballImage7, backgroundImage: .whiteBackground),
            BaseballModel(baseballImage: .baseballImage8, backgroundImage: .blackBackground),
            BaseballModel(baseballImage: .baseballImage9, backgroundImage: .whiteBackground),
            BaseballModel(baseballImage: .baseballImage10, backgroundImage: .blackBackground),
        ]
    }
}
