//
//  PopularLiveSectionView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct PopularLiveSectionView: View {
    let items: [PopularLiveModels] = PopularLiveModels.dummy()

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("실시간 인기 LIVE")
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
                HStack(spacing: 7) {
                    ForEach(items) { item in
                        PopularLiveItemView(model: item)
                    }
                }
                .padding(.horizontal, 13)
            }
            .frame(height: 140)
        }
    }
}

