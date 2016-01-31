//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by ChenXin on 16/1/31.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    var imageName : String?

      override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if imageName != nil {
            beautyImage.image = UIImage(named: imageName!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}