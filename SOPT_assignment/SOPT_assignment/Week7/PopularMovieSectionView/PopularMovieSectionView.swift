//
//  PopularMovieSectionView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct PopularMovieSectionView: View {
    let items: [PopularMovieModels] = PopularMovieModels.dummy()

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("실시간 인기 영화")
                    .font(.custom("Pretendard-Bold", size: 15))
                    .foregroundColor(.white)
                Spacer()
                Button("더보기") {
                    // TODO: 액션
                }
                .font(.custom("Pretendard-Medium", size: 12))
                .foregroundColor(Color(UIColor.appColor(.gray2)))
            }
            .padding(.horizontal, 13)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(items) { item in
                        PopularMovieItemView(model: item)
                    }
                }
                .padding(.horizontal, 13)
            }
            .frame(height: 146)
        }
    }
}
