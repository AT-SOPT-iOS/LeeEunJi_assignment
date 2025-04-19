//
//  WelcomeViewController.swift
//  SOPT_assignment
//
//  Created by 이은지 on 4/19/25.
//

import UIKit
import SnapKit

class WelcomeViewController: UIViewController {
    private let tvingLogoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "tvingLogo")
        return imageView
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "??? 님\n반가워요!"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont.appFont(.pretendardBold, size: 23)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }


}

extension WelcomeViewController {
    private func setLayout() {
        [tvingLogoImage, welcomeLabel].forEach {
            view.addSubview($0)
        }
    }
    
    private func setUpConstraints() {
        tvingLogoImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide)
        }
        
        welcomeLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(tvingLogoImage.snp.bottom).offset(67)
        }
    }

    private func configureView() {
        view.backgroundColor = .black
        setLayout()
        setUpConstraints()
    }
}
