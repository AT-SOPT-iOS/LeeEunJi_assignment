//
//  AnotherLogoItemView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct AnotherLogoItemView: View {
    let model: AnotherLogoModels

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(model.backgroundColor)
                .frame(width: 90, height: 45)

            Image(model.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 35)
        }
    }
}
