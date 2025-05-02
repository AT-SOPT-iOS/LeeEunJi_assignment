//
//  MainViewController.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/1/25.
//

import UIKit
import SnapKit

final class MainViewController: UIViewController {
    
    // MARK: - UI Components
    private let scrollView = UIScrollView()
    
    private let tvingLogoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "mainTvingLogo")
        return imageView
    }()
    
    private let searchButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "search"), for: .normal)
        return button
    }()
    
    private let tvingSmallLogoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "smallTvingLogo")
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setLayout()
        setUpConstraints()
    }


}

extension MainViewController {
    private func setLayout() {
//        [scrollView].forEach {
//            view.addSubview($0)
//        }
        
        [tvingLogoImage, searchButton, tvingSmallLogoImage].forEach {
            view.addSubview($0)
        }
    }
    
    private func setUpConstraints() {
//        scrollView.snp.makeConstraints {
//            $0.top.equalToSuperview()
//            $0.horizontalEdges.equalToSuperview()
//            $0.bottom.equalTo(tvingSmallLogoImage.snp.bottom).offset(50)
//        }
        
        tvingLogoImage.snp.makeConstraints {
            $0.top.equalToSuperview().offset(31)
            $0.leading.equalToSuperview()
            $0.height.greaterThanOrEqualTo(78)
            $0.width.greaterThanOrEqualTo(191)
        }
        
        searchButton.snp.makeConstraints {
            $0.centerY.equalTo(tvingLogoImage.snp.centerY)
            $0.trailing.equalTo(tvingSmallLogoImage.snp.leading).offset(-10)
            $0.width.height.equalTo(30)
        }
        
        tvingSmallLogoImage.snp.makeConstraints {
            $0.centerY.equalTo(tvingLogoImage.snp.centerY)
            $0.trailing.equalToSuperview().offset(-11)
            $0.width.height.equalTo(30)
        }
    }
}
