//
//  PopularMovie.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit

struct PopularMovie {
    let popularMovieImage: UIImage
}

extension PopularMovie {
    static func dummy() -> [PopularMovie] {
        return [
            PopularMovie(popularMovieImage: .popularMovieImage1),
            PopularMovie(popularMovieImage: .popularMovieImage2),
            PopularMovie(popularMovieImage: .popularMovieImage3),
            PopularMovie(popularMovieImage: .popularMovieImage4),
            PopularMovie(popularMovieImage: .popularMovieImage5),
        ]
    }
}
