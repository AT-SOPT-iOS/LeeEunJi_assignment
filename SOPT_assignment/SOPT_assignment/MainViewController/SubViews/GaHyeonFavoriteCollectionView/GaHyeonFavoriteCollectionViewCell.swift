//
//  GaHyeonFavoriteCollectionViewCell.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit
import SnapKit

final class GaHyeonFavoriteCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "GaHyeonFavoriteCollectionViewCell"
    
    private var itemRow: Int?
    
    private let gaHyeonFavoriteImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.masksToBounds = true
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
        [gaHyeonFavoriteImageView].forEach {
            self.addSubview($0)
        }
        
        gaHyeonFavoriteImageView.snp.makeConstraints {
            $0.top.equalTo(self.snp.top)
            $0.centerX.equalTo(self.snp.centerX)
            $0.height.equalTo(90)
            $0.width.equalTo(160)
        }
    }
   
}

extension GaHyeonFavoriteCollectionViewCell {
    func dataBind(_ itemData: GaHyeonFavoriteModel, itemRow: Int) {
        gaHyeonFavoriteImageView.image = itemData.gahyeonFavoriteImage
        self.itemRow = itemRow
    }
}
