//
//  MainView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 6/3/25.
//

import SwiftUI

struct MainView: View {
    @State private var selectedCategoryIndex: Int = 0

    private let categories: [Category] = [
        Category(name: "홈"),
        Category(name: "드라마"),
        Category(name: "예능"),
        Category(name: "영화"),
        Category(name: "스포츠"),
        Category(name: "뉴스")
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                headerView
                
                CategoryTabView(
                    categories: categories,
                    selectedIndex: $selectedCategoryIndex
                )
                
                Image(.todayTvingImage5)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 400)
                    .frame(maxWidth: .infinity)
                    .clipped()
                
                TodayTvingSectionView()

                noticeView
                footerView
            }
            .padding(.top, 16)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
    
    private var headerView: some View {
        HStack {
            Image("mainTvingLogo")
            Spacer()
            Button(action: {}) {
                Image("search")
            }
            Image("smallTvingLogo")
        }
        .padding(.horizontal)
    }

    
    private var noticeView: some View {
        HStack {
            Text("공지")
                .font(.custom("Pretendard-Medium", size: 11))
                .foregroundColor(Color(UIColor.appColor(.tvingNotice)))
            Text("티빙 계정 공유 정책 추가 안내")
                .font(.custom("Pretendard-Medium", size: 11))
                .foregroundColor(Color(UIColor.appColor(.tvingNoticeTitle)))
            Spacer()
            Image("goToNotice")
        }
        .padding()
        .background(Color(UIColor.appColor(.tvingAnotherLogo)))
        .cornerRadius(5)
        .padding(.horizontal, 14)
    }

    private var footerView: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("고객문의 · 이용약관 · 개인정보처리방침")
            Text("사업자정보 · 인재채용")
        }
        .font(.custom("Pretendard-Medium", size: 11))
        .foregroundColor(.gray)
        .padding(.horizontal, 20)
        .padding(.bottom, 100)
    }
}

#Preview {
    MainView()
}
