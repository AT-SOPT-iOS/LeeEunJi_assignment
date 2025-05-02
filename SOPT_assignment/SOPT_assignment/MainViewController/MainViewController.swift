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
    private let contentView = UIView()
    
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
    
    private let categoriesCollectionView: CategoriesCollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = .init(width: 44, height: 40)
        flowLayout.minimumLineSpacing = (UIScreen.main.bounds.width - (40 * 6 + 18 * 2)) / 5
        let collectionView = CategoriesCollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.isScrollEnabled = false
        return collectionView
    }()
    
    private let yourNameImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "yourNameImage")
        return imageView
    }()
    
    private let todayTvingLabel: UILabel = {
        let label = UILabel()
        label.text = "오늘의 티빙 TOP 20"
        label.font = UIFont.appFont(.pretendardBold, size: 15)
        label.textColor = .white
        return label
    }()
    
    private let todayTvingCollectionView: TodayTvingCollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = .init(width: 130, height: 160)
        flowLayout.minimumLineSpacing = 12
        let collectionView = TodayTvingCollectionView(frame: .zero, collectionViewLayout: flowLayout)
        return collectionView
    }()
    
    private let popularLiveLabel: UILabel = {
        let label = UILabel()
        label.text = "실시간 인기 LIVE"
        label.font = UIFont.appFont(.pretendardBold, size: 15)
        label.textColor = .white
        return label
    }()
    
    private let seeMoreLiveButton: UIButton = {
        let button = UIButton()
        button.setTitle("더보기", for: .normal)
        button.setTitleColor(UIColor.appColor(.gray2), for: .normal)
        button.titleLabel?.font = UIFont.appFont(.pretendardMedium, size: 12)
        return button
    }()
    
    private let popularLiveCollectionView: PopularLiveCollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = .init(width: 160, height: 140)
        flowLayout.minimumLineSpacing = 7
        let collectionView = PopularLiveCollectionView(frame: .zero, collectionViewLayout: flowLayout)
        return collectionView
    }()
    
    private let popularMovieLabel: UILabel = {
        let label = UILabel()
        label.text = "실시간 인기 영화"
        label.font = UIFont.appFont(.pretendardBold, size: 15)
        label.textColor = .white
        return label
    }()
    
    private let seeMoreMovieButton: UIButton = {
        let button = UIButton()
        button.setTitle("더보기", for: .normal)
        button.setTitleColor(UIColor.appColor(.gray2), for: .normal)
        button.titleLabel?.font = UIFont.appFont(.pretendardMedium, size: 12)
        return button
    }()
    
    private let popularMovieCollectionView: PopularMovieCollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = .init(width: 98, height: 146)
        flowLayout.minimumLineSpacing = 8
        let collectionView = PopularMovieCollectionView(frame: .zero, collectionViewLayout: flowLayout)
        return collectionView
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setLayout()
        setUpConstraints()
    }
}

extension MainViewController {
    private func setLayout() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)

        [tvingLogoImage, searchButton, tvingSmallLogoImage,
          categoriesCollectionView, yourNameImageView,
          todayTvingLabel, todayTvingCollectionView,
         popularLiveLabel, seeMoreLiveButton, popularLiveCollectionView, popularMovieLabel, seeMoreMovieButton, popularMovieCollectionView
        ].forEach {
            contentView.addSubview($0)
        }

    }
    
    private func setUpConstraints() {
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }

        contentView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.width.equalToSuperview()
        }
        
        tvingLogoImage.snp.makeConstraints {
            $0.top.equalToSuperview()
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
        
        categoriesCollectionView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(40)
            $0.top.equalTo(tvingLogoImage.snp.bottom)
        }
        
        yourNameImageView.snp.makeConstraints {
            $0.top.equalTo(categoriesCollectionView.snp.bottom).offset(10)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(400)
        }
        
        todayTvingLabel.snp.makeConstraints {
            $0.top.equalTo(yourNameImageView.snp.bottom).offset(9)
            $0.leading.equalToSuperview().offset(12)
            $0.height.equalTo(23)
        }
        
        todayTvingCollectionView.snp.makeConstraints {
            $0.top.equalTo(todayTvingLabel.snp.bottom).offset(9)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(160)
        }
        
        popularLiveLabel.snp.makeConstraints {
            $0.top.equalTo(todayTvingCollectionView.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(13)
            $0.height.equalTo(23)
        }
        
        seeMoreLiveButton.snp.makeConstraints {
            $0.centerY.equalTo(popularLiveLabel.snp.centerY)
            $0.trailing.equalToSuperview().offset(-4)
            $0.height.equalTo(20)
            $0.width.equalTo(44)
        }
        
        popularLiveCollectionView.snp.makeConstraints {
            $0.top.equalTo(popularLiveLabel.snp.bottom).offset(9)
            $0.leading.equalTo(popularLiveLabel.snp.leading)
            $0.trailing.equalToSuperview()
            $0.height.equalTo(140)
        }
        
        popularMovieLabel.snp.makeConstraints {
            $0.top.equalTo(popularLiveCollectionView.snp.bottom).offset(18)
            $0.leading.equalToSuperview().offset(13)
            $0.height.equalTo(23)
        }
        
        seeMoreMovieButton.snp.makeConstraints {
            $0.centerY.equalTo(popularMovieLabel.snp.centerY)
            $0.trailing.equalToSuperview().offset(-4)
            $0.height.equalTo(20)
            $0.width.equalTo(44)
        }
        
        popularMovieCollectionView.snp.makeConstraints {
            $0.top.equalTo(popularMovieLabel.snp.bottom).offset(13)
            $0.leading.equalTo(popularMovieLabel.snp.leading)
            $0.trailing.equalToSuperview()
            $0.height.equalTo(140)
            $0.bottom.equalToSuperview().offset(-40)    // 스크롤뷰 바닥
        }
    }
}
