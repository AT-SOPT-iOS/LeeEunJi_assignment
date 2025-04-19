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
    
    private let mainButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.appColor(.red)
        button.setTitle("메인으로", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.appFont(.pretendardSemiBold, size: 14)
        button.layer.cornerRadius = 3
        button.addTarget(self, action: #selector(mainButtonTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        configureView()
    }

    @objc private func mainButtonTapped() {
        if self.navigationController == nil {
            self.dismiss(animated: true)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }

}

extension WelcomeViewController {
    private func setLayout() {
        [tvingLogoImage, welcomeLabel, mainButton].forEach {
            view.addSubview($0)
        }
    }
    
    private func setUpConstraints() {
        tvingLogoImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(14)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide)
        }
        
        welcomeLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(tvingLogoImage.snp.bottom).offset(67)
        }
        
        mainButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(52)
            make.bottom.equalToSuperview().offset(-66)
        }
    }

    private func configureView() {
        view.backgroundColor = .black
        setLayout()
        setUpConstraints()
    }
}
