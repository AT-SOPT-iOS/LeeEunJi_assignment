//
//  TodayTvingCollectionViewCell.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit
import SnapKit

final class TodayTvingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TodayTvingCollectionViewCell"
    
    private var itemRow: Int?
    
    private let rankLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.appFont(.pretendardSemiBold, size: 50)

        label.transform = CGAffineTransform(rotationAngle: 0.15)

        return label
    }()
    
    private let todayTvingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 3
        return imageView
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
        [rankLabel, todayTvingImageView].forEach {
            self.addSubview($0)
        }
        
        rankLabel.snp.makeConstraints {
            $0.bottom.equalTo(self.snp.bottom)
            $0.leading.equalTo(self.snp.leading)
            $0.height.equalTo(80)
        }
        
        todayTvingImageView.snp.makeConstraints {
            $0.top.equalTo(self.snp.top)
            $0.leading.equalTo(rankLabel.snp.trailing).offset(5)
            $0.width.equalTo(98)
            $0.height.equalTo(146)
        }
    }
   
}

extension TodayTvingCollectionViewCell {
    func dataBind(_ itemData: TodayTvingModel, itemRow: Int) {
        rankLabel.text = itemData.rankLabel
        todayTvingImageView.image = itemData.image
        self.itemRow = itemRow
    }
}
