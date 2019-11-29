//
//  ImagePresentationVC.swift
//  splitter
//
//  Created by Viktor Yamchinov on 29.11.2019.
//  Copyright © 2019 Viktor Yamchinov. All rights reserved.
//

import UIKit

class ImagePresentationVC: UIViewController {

    @IBOutlet weak var itemImage: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        itemImage.image = image
    }


}

