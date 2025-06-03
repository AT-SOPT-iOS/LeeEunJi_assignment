//
//  GaHyeonFavoriteSectionView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct GaHyeonFavoriteSectionView: View {
    let items = GaHyeonFavoriteModels.dummy()

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("김가현PD의 인생작 TOP 5")
                .font(.custom("Pretendard-Bold", size: 15))
                .foregroundColor(.white)
                .padding(.horizontal, 15)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(items) { item in
                        GaHyeonFavoriteItemView(model: item)
                    }
                }
                .padding(.horizontal, 15)
            }
            .frame(height: 90)
        }
    }
}
