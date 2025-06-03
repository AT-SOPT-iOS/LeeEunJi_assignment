//
//  GaHyeonFavoriteItemView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct GaHyeonFavoriteItemView: View {
    let model: GaHyeonFavoriteModel

    var body: some View {
        Image(model.imageName)
            .resizable()
            .frame(width: 160, height: 90)
            .cornerRadius(3)
    }
}
