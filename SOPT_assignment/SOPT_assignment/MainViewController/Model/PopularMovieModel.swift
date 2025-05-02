//
//  PopularMovieModel.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit

struct PopularMovieModel {
    let popularMovieImage: UIImage
}

extension PopularMovieModel {
    static func dummy() -> [PopularMovieModel] {
        return [
            PopularMovieModel(popularMovieImage: .popularMovieImage1),
            PopularMovieModel(popularMovieImage: .popularMovieImage2),
            PopularMovieModel(popularMovieImage: .popularMovieImage3),
            PopularMovieModel(popularMovieImage: .popularMovieImage4),
            PopularMovieModel(popularMovieImage: .popularMovieImage5),
        ]
    }
}
