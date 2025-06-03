//
//  CategoryTabView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct CategoryTabView: View {
    let categories: [Category]
    @Binding var selectedIndex: Int

    private var categorySpacing: CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        return (screenWidth - (50 * 6 + 18 * 2)) / 5
    }

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: categorySpacing) {
                ForEach(Array(categories.enumerated()), id: \.element.id) { index, category in
                    VStack(spacing: 4) {
                        Button(action: {
                            selectedIndex = index
                        }) {
                            Text(category.name)
                                .font(.custom("Pretendard-Regular", size: 17))
                                .foregroundColor(.white)
                                .frame(width: 50, height: 40)
                        }
                        .buttonStyle(PlainButtonStyle())

                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 13, height: 3)
                            .opacity(selectedIndex == index ? 1 : 0)
                            .animation(.easeInOut(duration: 0.25), value: selectedIndex)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}
