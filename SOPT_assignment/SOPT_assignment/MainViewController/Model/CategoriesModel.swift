//
//  CategoriesModel.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

struct CategoriesModel {
    let categoryName: String
}

extension CategoriesModel {
    static func dummy() -> [CategoriesModel] {
        return [
            CategoriesModel(categoryName: "홈"),
            CategoriesModel(categoryName: "드라마"),
            CategoriesModel(categoryName: "예능"),
            CategoriesModel(categoryName: "영화"),
            CategoriesModel(categoryName: "스포츠"),
            CategoriesModel(categoryName: "뉴스"),
        ]
    }
}
