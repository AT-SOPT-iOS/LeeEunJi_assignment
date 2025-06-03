//
//  PopularLiveItemView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct PopularLiveItemView: View {
    let model: PopularLiveModels

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Image(model.imageName)
                .resizable()
                .frame(width: 160, height: 80)
                .cornerRadius(3)

            HStack(alignment: .top, spacing: 3) {
                Text(model.rank)
                    .font(.custom("Pretendard-SemiBold", size: 19))
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(8.6))
                    .frame(height: 30)

                VStack(alignment: .leading, spacing: 1) {
                    Text(model.title)
                        .font(.custom("Pretendard-Medium", size: 10))
                        .foregroundColor(.white)
                    Text(model.subtitle)
                        .font(.custom("Pretendard-Regular", size: 10))
                        .foregroundColor(Color(UIColor.appColor(.gray2)))
                    Text(model.percent)
                        .font(.custom("Pretendard-Regular", size: 10))
                        .foregroundColor(Color(UIColor.appColor(.gray2)))
                }
            }
        }
        .frame(width: 160, height: 140)
    }
}
