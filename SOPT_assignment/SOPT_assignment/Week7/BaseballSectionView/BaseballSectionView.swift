//
//  BaseballSectionView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct BaseballSectionView: View {
    let items = BaseballModels.dummy()

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(items) { item in
                    BaseballItemView(model: item)
                }
            }
            .padding(.horizontal)
        }
        .frame(height: 50)
    }
}
