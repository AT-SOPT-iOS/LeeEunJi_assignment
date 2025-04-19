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
    
    private let idTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "아이디", attributes: [.foregroundColor: UIColor.appColor(.gray2), .font: UIFont.appFont(.pretendardSemiBold, size: 15)])
        textField.addLeftPadding()
        textField.font = UIFont.appFont(.pretendardSemiBold, size: 15)
        textField.textColor = UIColor.appColor(.gray2)
        textField.backgroundColor = UIColor.appColor(.gray4)
        textField.layer.cornerRadius = 3
        return textField
    }()
        
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [.foregroundColor: UIColor.appColor(.gray2), .font: UIFont.appFont(.pretendardSemiBold, size: 15)])
        textField.addLeftPadding()
        textField.font = UIFont.appFont(.pretendardSemiBold, size: 15)
        textField.textColor = UIColor.appColor(.gray2)
        textField.backgroundColor = UIColor.appColor(.gray4)
        textField.layer.cornerRadius = 3
        return textField
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.borderColor = UIColor.appColor(.gray2).cgColor
        button.layer.borderWidth = 1
        button.setTitle("로그인하기", for: .normal)
        button.setTitleColor(UIColor.appColor(.gray2), for: .normal)
        button.titleLabel?.font = UIFont.appFont(.pretendardSemiBold, size: 14)
        button.layer.cornerRadius = 3
        button.addTarget(self, action: #selector(loginButtonDidTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    @objc private func loginButtonDidTapped() {
        print("")
    }
    
}

extension LoginViewController {
    private func setLayout() {
        [loginInfoLabel, idTextField, passwordTextField, loginButton].forEach {
            view.addSubview($0)
        }
    }
    
    private func setUpConstraints() {
        loginInfoLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
        }
        
        idTextField.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(52)
            make.top.equalTo(loginInfoLabel.snp.bottom).offset(31)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(52)
            make.top.equalTo(idTextField.snp.bottom).offset(7)
        }
        
        loginButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.top.equalTo(passwordTextField.snp.bottom).offset(21)
            make.height.equalTo(52)
        }
    }

    private func configureView() {
        self.view.backgroundColor = .black
        setLayout()
        setUpConstraints()
    }
}

extension UITextField {
    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 22, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
}
