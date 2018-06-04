//
//  DetailViewController.swift
//  Training
//
//  Created by Chien on 6/4/18.
//  Copyright © 2018 Chien. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var imgVC : UIImage?
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = imgVC
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        imgVC = imgView.image
    }
    
}
