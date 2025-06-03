//
//  TodayTvingItemView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct TodayTvingItemView: View {
    let model: TodayTvingModels

    var body: some View {
        HStack(spacing: 5) {
            Text(model.rankLabel)
                .font(.system(size: 50, weight: .semibold))
                .foregroundColor(.white)
                .rotationEffect(.degrees(8.6))
                .frame(width: 30, height: 80, alignment: .bottom)

            model.image
                .resizable()
                .frame(width: 98, height: 146)
                .cornerRadius(3)
        }
    }
}
