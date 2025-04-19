//
//  LoginViewController.swift
//  SOPT_assignment
//
//  Created by 이은지 on 4/19/25.
//

import UIKit
import SnapKit

final class LoginViewController: UIViewController {
    
    private let loginInfoLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.appColor(.gray1)
        label.textAlignment = .center
        label.font = UIFont.appFont(.pretendardRegular, size: 23)
        label.text = "TVING ID 로그인"
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }


    
}

extension LoginViewController {
    private func setLayout() {
        [loginInfoLabel].forEach {
            view.addSubview($0)
        }
    }
    
    private func setUpConstraints() {
        loginInfoLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
        }
    }

    private func configureView() {
        self.view.backgroundColor = .black
        setLayout()
        setUpConstraints()
    }
}
