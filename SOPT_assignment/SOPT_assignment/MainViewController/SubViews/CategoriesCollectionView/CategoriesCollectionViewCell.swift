//
//  CategoriesCollectionViewCell.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit
import SnapKit

final class CategoriesCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CategoriesCollectionViewCell"
    
    private var itemRow: Int?
    
    private let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.appFont(.pretendardRegular, size: 17)
        return label
    }()
    
    private let underLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        [categoryLabel, underLineView].forEach {
            self.addSubview($0)
        }
        
        categoryLabel.snp.makeConstraints {
            $0.top.equalTo(self.snp.top)
            $0.centerX.equalTo(self.snp.centerX)
            $0.height.equalTo(27)
        }
        
        underLineView.snp.makeConstraints {
            $0.centerX.equalTo(categoryLabel.snp.centerX)
            $0.top.equalTo(categoryLabel.snp.bottom).offset(7)
            $0.height.equalTo(3)
            $0.width.equalTo(13)
        }
    }
   
}

extension CategoriesCollectionViewCell {
    func dataBind(_ itemData: CategoriesModel, itemRow: Int) {
        categoryLabel.text = itemData.categoryName
        self.itemRow = itemRow
    }
}
