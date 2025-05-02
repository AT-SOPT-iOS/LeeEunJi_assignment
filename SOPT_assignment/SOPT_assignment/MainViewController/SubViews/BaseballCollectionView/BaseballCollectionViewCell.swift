//
//  BaseballCollectionViewCell.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit
import SnapKit

final class BaseballCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "BaseballCollectionViewCell"
    
    private var itemRow: Int?
    
    private let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    private let baseballImage: UIImageView = {
        let imageView = UIImageView()
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
        [backgroundImage].forEach {
            self.addSubview($0)
        }
        
        backgroundImage.addSubview(baseballImage)
        
        backgroundImage.snp.makeConstraints {
            $0.top.equalTo(self.snp.top)
            $0.centerX.equalTo(self.snp.centerX)
            $0.height.equalTo(50)
            $0.width.equalTo(80)
        }
        
        baseballImage.snp.makeConstraints {
            $0.top.bottom.equalTo(self.backgroundImage).inset(5)
            $0.centerX.centerY.equalTo(self.backgroundImage)
        }
    }
   
}

extension BaseballCollectionViewCell {
    func dataBind(_ itemData: BaseballModel, itemRow: Int) {
        baseballImage.image = itemData.baseballImage
        backgroundImage.image = itemData.backgroundImage
        self.itemRow = itemRow
    }
}
