//
//  Extension CollectionView.swift
//  Training
//
//  Created by Chien on 6/4/18.
//  Copyright © 2018 Chien. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func layoutCollection(numberOfItem : CGFloat, padding : CGFloat) {
        let witdhScreen = UIScreen.main.bounds.width
        let witdhItem = (witdhScreen - padding * (numberOfItem + 1 ))/numberOfItem
       
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: witdhItem, height: witdhItem)
        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        layout.minimumLineSpacing = padding
        layout.scrollDirection = .vertical
        self.collectionViewLayout = layout
    }
}
