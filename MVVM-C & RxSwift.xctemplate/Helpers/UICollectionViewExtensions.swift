//
//  UICollectionViewExtensions.swift
//  MVVM-C & RxSwift Template
//
//  Created by K7 Tech Agency
//  Copyright © 2019 Nikola Milic. All rights reserved.
//

extension UICollectionView { 

    var centerPoint: CGPoint {
        return CGPoint(x: center.x + contentOffset.x,
                       y: center.y + contentOffset.y)
    }
    
    var centerCellIndexPath: IndexPath? {
        return indexPathForItem(at: centerPoint)
    }
}
