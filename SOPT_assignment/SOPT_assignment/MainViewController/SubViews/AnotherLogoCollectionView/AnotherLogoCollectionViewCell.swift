//
//  AnotherLogoCollectionViewCell.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit
import SnapKit

final class AnotherLogoCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "AnotherLogoCollectionViewCell"
    
    private var itemRow: Int?
    
    private let backgroundColorView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 4
        return view
    }()
    
    private let anotherLogoImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        [backgroundColorView].forEach {
            self.addSubview($0)
        }
        
        backgroundColorView.addSubview(anotherLogoImageView)
        
        backgroundColorView.snp.makeConstraints {
            $0.top.equalTo(self.snp.top)
            $0.centerX.equalTo(self.snp.centerX)
            $0.height.equalTo(45)
            $0.width.equalTo(90)
        }
        
        anotherLogoImageView.snp.makeConstraints {
            $0.top.bottom.equalTo(self.backgroundColorView).inset(5)
            $0.centerX.centerY.equalTo(self.backgroundColorView)
        }
    }
   
}

extension AnotherLogoCollectionViewCell {
    func dataBind(_ itemData: AnotherLogoModel, itemRow: Int) {
        backgroundColorView.backgroundColor = itemData.backgroundColor
        anotherLogoImageView.image = itemData.anotherLogo
        self.itemRow = itemRow
    }
}
