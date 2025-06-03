//
//  TodayTvingSectionView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct TodayTvingSectionView: View {
    let items: [TodayTvingModels] = TodayTvingModels.dummy()

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("오늘의 티빙 TOP 20")
                .font(.custom("Pretendard-Bold", size: 15))
                .foregroundColor(.white)
                .padding(.horizontal, 12)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(items) { item in
                        TodayTvingItemView(model: item)
                    }
                }
                .padding(.horizontal, 12)
            }
            .frame(height: 160)
        }
    }
}
