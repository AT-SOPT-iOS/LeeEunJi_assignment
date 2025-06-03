//
//  PopularMovieItemView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct PopularMovieItemView: View {
    let model: PopularMovieModels

    var body: some View {
        Image(model.imageName)
            .resizable()
            .frame(width: 98, height: 146)
            .cornerRadius(3)
    }
}
