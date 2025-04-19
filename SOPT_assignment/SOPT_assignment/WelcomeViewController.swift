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

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }


}

extension WelcomeViewController {
    private func setLayout() {
        [tvingLogoImage].forEach {
            view.addSubview($0)
        }
    }
    
    private func setUpConstraints() {
        tvingLogoImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide)
        }
    }

    private func configureView() {
        view.backgroundColor = .black
        setLayout()
        setUpConstraints()
    }
}
