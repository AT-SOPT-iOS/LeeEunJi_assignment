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
    private let mainScrollView = UIScrollView()
    private let scrollContentContainerView = UIView()
    
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
    
    private let baseballCollectionView: BaseballCollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = .init(width: 80, height: 50)
        flowLayout.minimumLineSpacing = 8
        let collectionView = BaseballCollectionView(frame: .zero, collectionViewLayout: flowLayout)
        return collectionView
    }()
    
    private let anotherLogoCollectionView: AnotherLogoCollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = .init(width: 90, height: 45)
        flowLayout.minimumLineSpacing = 7
        let collectionView = AnotherLogoCollectionView(frame: .zero, collectionViewLayout: flowLayout)
        return collectionView
    }()
    
    private let gahyeonFavoriteLabel: UILabel = {
        let label = UILabel()
        label.text = "김가현PD의 인생작 TOP 5"
        label.font = UIFont.appFont(.pretendardBold, size: 15)
        label.textColor = .white
        return label
    }()
    
    private let gaHyeonFavoriteCollectionView: GaHyeonFavoriteCollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = .init(width: 160, height: 90)
        flowLayout.minimumLineSpacing = 8
        let collectionView = GaHyeonFavoriteCollectionView(frame: .zero, collectionViewLayout: flowLayout)
        return collectionView
    }()
    
    private let noticeBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.appColor(.tvingAnotherLogo)
        view.layer.cornerRadius = 5
        return view
    }()
    
    private let noticeLabel: UILabel = {
        let label = UILabel()
        label.text = "공지"
        label.font = UIFont.appFont(.pretendardMedium, size: 11)
        label.textColor = UIColor.appColor(.tvingNotice)
        return label
    }()
    
    private let noticeTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "티빙 계정 공유 정책 추가 안내"
        label.font = UIFont.appFont(.pretendardMedium, size: 11)
        label.textColor = UIColor.appColor(.tvingNoticeTitle)
        return label
    }()
    
    private let goToNoticeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "goToNotice"), for: .normal)
        return button
    }()
    
    private let someLabel1: UILabel = {
        let label = UILabel()
        label.text = "고객문의 · 이용약관 · 개인정보처리방침"
        label.font = UIFont.appFont(.pretendardMedium, size: 11)
        label.textColor = UIColor.appColor(.tvingNotice)
        return label
    }()
    
    private let someLabel2: UILabel = {
        let label = UILabel()
        label.text = "사업자정보 · 인재채용"
        label.font = UIFont.appFont(.pretendardMedium, size: 11)
        label.textColor = UIColor.appColor(.tvingNotice)
        return label
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
        view.addSubview(mainScrollView)
        mainScrollView.addSubview(scrollContentContainerView)

        [tvingLogoImage, searchButton, tvingSmallLogoImage,
         categoriesCollectionView, yourNameImageView,
         todayTvingLabel, todayTvingCollectionView,
         popularLiveLabel, seeMoreLiveButton, popularLiveCollectionView,
         popularMovieLabel, seeMoreMovieButton, popularMovieCollectionView,
         baseballCollectionView, anotherLogoCollectionView, gahyeonFavoriteLabel,
         gaHyeonFavoriteCollectionView, noticeBackgroundView,
         someLabel1, someLabel2
        ].forEach {
            scrollContentContainerView.addSubview($0)
        }
        
        [noticeLabel, noticeTitleLabel, goToNoticeButton].forEach {
            noticeBackgroundView.addSubview($0)
        }

    }
    
    private func setUpConstraints() {
        mainScrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }

        scrollContentContainerView.snp.makeConstraints {
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
            $0.horizontalEdges.equalToSuperview()
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
        }
        
        baseballCollectionView.snp.makeConstraints {
            $0.top.equalTo(popularMovieCollectionView.snp.bottom).offset(28)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(50)
        }
        
        anotherLogoCollectionView.snp.makeConstraints {
            $0.top.equalTo(baseballCollectionView.snp.bottom).offset(28)
            $0.leading.equalToSuperview().offset(15)
            $0.trailing.equalToSuperview()
            $0.height.equalTo(45)
        }
        
        gahyeonFavoriteLabel.snp.makeConstraints {
            $0.top.equalTo(anotherLogoCollectionView.snp.bottom).offset(25)
            $0.leading.equalToSuperview().offset(15)
            $0.height.equalTo(23)
        }
        
        gaHyeonFavoriteCollectionView.snp.makeConstraints {
            $0.top.equalTo(gahyeonFavoriteLabel.snp.bottom).offset(13)
            $0.leading.equalTo(gahyeonFavoriteLabel.snp.leading)
            $0.trailing.equalToSuperview()
            $0.height.equalTo(90)
        }
        
        noticeBackgroundView.snp.makeConstraints {
            $0.top.equalTo(gaHyeonFavoriteCollectionView.snp.bottom).offset(23)
            $0.horizontalEdges.equalToSuperview().inset(14)
            $0.height.equalTo(50)
        }
        
        noticeLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().offset(15)
        }
        
        noticeTitleLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(noticeLabel.snp.trailing).offset(8)
        }
        
        goToNoticeButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview().offset(-16)
            $0.width.equalTo(18)
        }
        
        someLabel1.snp.makeConstraints {
            $0.top.equalTo(noticeBackgroundView.snp.bottom).offset(13)
            $0.leading.equalToSuperview().offset(20)
            $0.height.equalTo(18)
        }
        
        someLabel2.snp.makeConstraints {
            $0.top.equalTo(someLabel1.snp.bottom)
            $0.leading.equalToSuperview().offset(20)
            $0.height.equalTo(18)
            $0.bottom.equalToSuperview().offset(-100)
        }
    }
}
