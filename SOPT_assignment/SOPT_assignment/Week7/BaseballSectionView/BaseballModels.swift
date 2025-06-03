//
//  BaseballModels.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct BaseballModels: Identifiable {
    let id = UUID()
    let imageName: String
    let backgroundName: String

    static func dummy() -> [BaseballModels] {
        return [
            .init(imageName: "baseballImage1", backgroundName: "whiteBackground"),
            .init(imageName: "baseballImage2", backgroundName: "blackBackground"),
            .init(imageName: "baseballImage3", backgroundName: "whiteBackground"),
            .init(imageName: "baseballImage4", backgroundName: "blackBackground"),
            .init(imageName: "baseballImage5", backgroundName: "whiteBackground"),
            .init(imageName: "baseballImage6", backgroundName: "blackBackground"),
            .init(imageName: "baseballImage7", backgroundName: "whiteBackground"),
            .init(imageName: "baseballImage8", backgroundName: "blackBackground"),
            .init(imageName: "baseballImage9", backgroundName: "whiteBackground"),
            .init(imageName: "baseballImage10", backgroundName: "blackBackground")
        ]
    }
}

