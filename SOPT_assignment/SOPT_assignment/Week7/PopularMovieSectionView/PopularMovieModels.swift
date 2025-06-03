//
//  PopularMovieModels.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct PopularMovieModels: Identifiable {
    let id = UUID()
    let imageName: String

    static func dummy() -> [PopularMovieModels] {
        return [
            .init(imageName: "popularMovieImage1"),
            .init(imageName: "popularMovieImage2"),
            .init(imageName: "popularMovieImage3"),
            .init(imageName: "popularMovieImage4"),
            .init(imageName: "popularMovieImage5")
        ]
    }
}
