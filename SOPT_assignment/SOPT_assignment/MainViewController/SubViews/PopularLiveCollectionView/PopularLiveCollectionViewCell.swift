//
//  PopularLiveCollectionViewCell.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit
import SnapKit

final class PopularLiveCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PopularLiveCollectionViewCell"
    
    private var itemRow: Int?
    
    private let popularImage: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 3
        return imageView
    }()
    
    private let rankLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.appFont(.pretendardSemiBold, size: 19)
        label.transform = CGAffineTransform(rotationAngle: 0.15)
        return label
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.appFont(.pretendardMedium, size: 10)
        return label
    }()
    
    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.appColor(.gray2)
        label.textAlignment = .center
        label.font = UIFont.appFont(.pretendardRegular, size: 10)
        return label
    }()
    
    private let percentLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.appColor(.gray2)
        label.textAlignment = .center
        label.font = UIFont.appFont(.pretendardRegular, size: 10)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        [popularImage, rankLabel, titleLabel, subtitleLabel, percentLabel].forEach {
            self.addSubview($0)
        }
        
        popularImage.snp.makeConstraints {
            $0.top.equalTo(self.snp.top)
            $0.centerX.equalTo(self.snp.centerX)
            $0.height.equalTo(80)
            $0.width.equalTo(160)
        }
        
        rankLabel.snp.makeConstraints {
            $0.top.equalTo(popularImage.snp.bottom).offset(7)
            $0.leading.equalTo(popularImage.snp.leading).offset(6)
            $0.height.equalTo(30)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(rankLabel.snp.top).offset(8)
            $0.leading.equalTo(rankLabel.snp.trailing).offset(3)
            $0.height.equalTo(16)
        }
        
        subtitleLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom)
            $0.leading.equalTo(titleLabel.snp.leading)
            $0.height.equalTo(16)
        }
        
        percentLabel.snp.makeConstraints {
            $0.top.equalTo(subtitleLabel.snp.bottom)
            $0.leading.equalTo(subtitleLabel.snp.leading)
            $0.height.equalTo(16)
        }
    }
   
}

extension PopularLiveCollectionViewCell {
    func dataBind(_ itemData: PopularLiveModel, itemRow: Int) {
        popularImage.image = itemData.popularImage
        rankLabel.text = itemData.rankLabel
        titleLabel.text = itemData.titleLabel
        subtitleLabel.text = itemData.subtitleLabel
        percentLabel.text = itemData.percentLabel
        self.itemRow = itemRow
    }
}
