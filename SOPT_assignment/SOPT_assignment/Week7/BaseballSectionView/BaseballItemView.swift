//
//  BaseballItemView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct BaseballItemView: View {
    let model: BaseballModels

    var body: some View {
        ZStack {
            Image(model.backgroundName)
                .resizable()
                .frame(width: 80, height: 50)
                .cornerRadius(3)

            Image(model.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 40)
                .padding(5)
        }
    }
}
