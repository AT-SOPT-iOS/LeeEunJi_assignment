//
//  TodayTvingCollectionView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit

final class TodayTvingCollectionView: UICollectionView, UICollectionViewDataSource {
    
    private var itemData = TodayTvingModel.dummy()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.backgroundColor = .clear
        self.dataSource = self
        register()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func register() {
        register(TodayTvingCollectionViewCell.self, forCellWithReuseIdentifier: TodayTvingCollectionViewCell.identifier)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TodayTvingCollectionViewCell.identifier, for: indexPath) as? TodayTvingCollectionViewCell else { return UICollectionViewCell() }
        cell.dataBind(itemData[indexPath.item], itemRow: indexPath.item)
        return cell
    }
}
