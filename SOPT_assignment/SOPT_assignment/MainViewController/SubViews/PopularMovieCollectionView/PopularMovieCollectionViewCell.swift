//
//  PopularMovieCollectionViewCell.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit
import SnapKit

final class PopularMovieCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PopularMovieCollectionViewCell"
    
    private var itemRow: Int?
    
    private let popularMovieImage: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 3
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
        [popularMovieImage].forEach {
            self.addSubview($0)
        }
        
        popularMovieImage.snp.makeConstraints {
            $0.top.equalTo(self.snp.top)
            $0.centerX.equalTo(self.snp.centerX)
            $0.height.equalTo(146)
            $0.width.equalTo(98)
        }
    }
   
}

extension PopularMovieCollectionViewCell {
    func dataBind(_ itemData: PopularMovieModel, itemRow: Int) {
        popularMovieImage.image = itemData.popularMovieImage
        self.itemRow = itemRow
    }
}
