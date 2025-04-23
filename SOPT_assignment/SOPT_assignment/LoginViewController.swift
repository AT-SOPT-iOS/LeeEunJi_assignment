//
//  LoginViewController.swift
//  SOPT_assignment
//
//  Created by 이은지 on 4/19/25.
//

import UIKit
import SnapKit

final class LoginViewController: UIViewController {
    // MARK: - UI Components
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
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let passwordClearButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "clearCircle"), for: .normal)
        button.isHidden = true
        button.addTarget(self, action: #selector(clearPasswordTextField), for: .touchUpInside)
        button.isHidden = true
        return button
    }()
    
    private let changeSecureButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "eyeGray"), for: .normal)
        button.addTarget(self, action: #selector(changeSecureButtonTapped), for: .touchUpInside)
        button.isHidden = true
        return button
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
        button.isEnabled = false
        return button
    }()
    
    private let findIdButton: UIButton = {
        let button = UIButton()
        button.setTitle("아이디 찾기", for: .normal)
        button.setTitleColor(UIColor.appColor(.gray2), for: .normal)
        button.titleLabel?.font = UIFont.appFont(.pretendardSemiBold, size: 14)
        button.addTarget(self, action: #selector(findIdButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    private let seperateView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.appColor(.gray4)
        return view
    }()
    
    private let findPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("비밀번호 찾기", for: .normal)
        button.setTitleColor(UIColor.appColor(.gray2), for: .normal)
        button.titleLabel?.font = UIFont.appFont(.pretendardSemiBold, size: 14)
        button.addTarget(self, action: #selector(findPasswordButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    private let signupGuideLabel: UILabel = {
        let label = UILabel()
        label.text = "아직 계정이 없으신가요?"
        label.font = UIFont.appFont(.pretendardSemiBold, size: 14)
        label.textColor = UIColor.appColor(.gray3)
        return label
    }()
    
    private let createNicknameButton: UIButton = {
        let button = UIButton()
        let title = "닉네임 만들러가기"
        let attributedString = NSAttributedString(string: title, attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue, .foregroundColor: UIColor.appColor(.gray2), .font: UIFont.appFont(.pretendardRegular, size: 14)])
        button.setAttributedTitle(attributedString, for: .normal)
        button.addTarget(self, action: #selector(createNicknameButtonDidTapped), for: .touchUpInside)
        return button
    }()

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        idTextField.delegate = self
        passwordTextField.delegate = self
        hideKeyboardWhenTappedAround()
        idTextField.addTarget(self, action: #selector(textFieldsDidChange), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldsDidChange), for: .editingChanged)
    }

    // MARK: - Function
    @objc private func loginButtonDidTapped() {
        pushToWelcomeViewController()
    }
    
    @objc private func findIdButtonDidTapped() {
        print("아이디 찾기 버튼 눌림")
    }
    
    @objc private func findPasswordButtonDidTapped() {
        print("비밀번호 찾기 버튼 눌림")
    }
    
    @objc private func createNicknameButtonDidTapped() {
        print("닉네임 만들러가기 버튼 눌림")
    }
    
    @objc private func clearPasswordTextField() {
        passwordTextField.text = ""
        passwordTextField.becomeFirstResponder()
    }
    
    @objc private func changeSecureButtonTapped() {
        passwordTextField.isSecureTextEntry.toggle()
        changeSecureButton.setImage(passwordTextField.isSecureTextEntry ? UIImage(named: "eyeGray") : UIImage(named: "eyeSlash"), for: .normal)
    }
    
    @objc private func textFieldsDidChange() {
        let isIdNotEmpty = !(idTextField.text ?? "").isEmpty
        let isPasswordNotEmpty = !(passwordTextField.text ?? "").isEmpty

        if isIdNotEmpty && isPasswordNotEmpty {
            loginButton.isEnabled = true
            loginButton.backgroundColor = UIColor.appColor(.red)
            loginButton.setTitleColor(.white, for: .normal)
        } else {
            loginButton.isEnabled = false
            loginButton.backgroundColor = .black
            loginButton.setTitleColor(UIColor.appColor(.gray2), for: .normal)
        }
    }
    
    private func pushToWelcomeViewController() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.setLabelText(idText: idTextField.text)
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
    }
}

// MARK: - Configure View
extension LoginViewController {
    private func setLayout() {
        [loginInfoLabel, idTextField, passwordTextField, changeSecureButton, loginButton, findIdButton, seperateView, findPasswordButton, signupGuideLabel,passwordClearButton, createNicknameButton].forEach {
            view.addSubview($0)
        }
    }
    
    private func setUpConstraints() {
        loginInfoLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(46)
            make.height.equalTo(37)
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
        
        passwordClearButton.snp.makeConstraints { make in
            make.centerY.equalTo(passwordTextField.snp.centerY)
            make.trailing.equalTo(changeSecureButton.snp.leading).offset(-16)
            make.width.height.equalTo(20)
        }
        
        changeSecureButton.snp.makeConstraints { make in
            make.centerY.equalTo(passwordTextField.snp.centerY)
            make.trailing.equalTo(passwordTextField.snp.trailing).offset(-20)
            make.width.height.equalTo(20)
        }
        
        loginButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.top.equalTo(passwordTextField.snp.bottom).offset(21)
            make.height.equalTo(52)
        }
        
        findIdButton.snp.makeConstraints { make in
            make.trailing.equalTo(seperateView.snp.leading).offset(-33)
            make.centerY.equalTo(seperateView.snp.centerY)
            make.width.greaterThanOrEqualTo(62)
            make.height.greaterThanOrEqualTo(22)
        }
        
        seperateView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(loginButton.snp.bottom).offset(36)
            make.width.equalTo(1)
            make.height.equalTo(12)
        }
        
        findPasswordButton.snp.makeConstraints { make in
            make.leading.equalTo(seperateView.snp.trailing).offset(36)
            make.centerY.equalTo(seperateView.snp.centerY)
            make.width.greaterThanOrEqualTo(73)
            make.height.greaterThanOrEqualTo(22)
        }
        
        signupGuideLabel.snp.makeConstraints { make in
            make.trailing.equalTo(seperateView.snp.leading)
            make.top.equalTo(findIdButton.snp.bottom).offset(28)
            make.height.equalTo(22)
        }
        
        createNicknameButton.snp.makeConstraints { make in
            make.leading.equalTo(signupGuideLabel.snp.trailing).offset(33)
            make.centerY.equalTo(signupGuideLabel.snp.centerY)
            make.width.greaterThanOrEqualTo(97)
            make.height.greaterThanOrEqualTo(22)
        }
    }

    private func configureView() {
        navigationController?.setNavigationBarHidden(true, animated: true)
        view.backgroundColor = .black
        setLayout()
        setUpConstraints()
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.appColor(.gray2).cgColor
        
        if textField == passwordTextField {
            passwordClearButton.isHidden = false
            changeSecureButton.isHidden = false
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 0
        
        if textField == passwordTextField {
            passwordClearButton.isHidden = true
            changeSecureButton.isHidden = true
        }
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
