//
//  AnotherLogoSectionView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct AnotherLogoSectionView: View {
    let items = AnotherLogoModels.dummy()

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 7) {
                ForEach(items) { item in
                    AnotherLogoItemView(model: item)
                }
            }
            .padding(.horizontal, 15)
        }
        .frame(height: 45)
    }
}
