//
//  CategoriesCollectionView.swift
//  SOPT_assignment
//
//  Created by 이은지 on 5/2/25.
//

import UIKit

final class CategoriesCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate {
    
    private var itemData = CategoriesModel.dummy()
    
    private let underLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.backgroundColor = .clear
        self.dataSource = self
        self.delegate = self
        register()
        self.addSubview(underLineView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func register() {
        register(CategoriesCollectionViewCell.self, forCellWithReuseIdentifier: CategoriesCollectionViewCell.identifier)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCollectionViewCell.identifier, for: indexPath) as? CategoriesCollectionViewCell else { return UICollectionViewCell() }
        cell.dataBind(itemData[indexPath.item], itemRow: indexPath.item)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) else { return }

        let underlineWidth: CGFloat = 13
        let underlineHeight: CGFloat = 3

        UIView.animate(withDuration: 0.25) {
            self.underLineView.frame = CGRect(
                x: cell.frame.midX - underlineWidth / 2,
                y: cell.frame.maxY - underlineHeight,
                width: underlineWidth,
                height: underlineHeight
            )
        }
    }
}
