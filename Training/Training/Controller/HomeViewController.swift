//
//  ViewControllerHome.swift
//  Training
//
//  Created by Chien on 6/4/18.
//  Copyright © 2018 Chien. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var imgZoom: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrImg = ["ACV1","ACV2","ACV3","ACV4","ACV5","ACV6",]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.layoutCollection(numberOfItem: 4, padding: 5)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
}
extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell" , for: indexPath) as! CollectionViewCell
        
        cell.imgCell.image = UIImage(named: arrImg[indexPath.row])
       
        return cell
    }
}

