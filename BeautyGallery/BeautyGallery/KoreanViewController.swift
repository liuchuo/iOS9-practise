//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by ChenXin on 16/3/8.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit
import Social
class KoreanViewController: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func fackbookTapped(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        
        controller.setInitialText("呵呵呵~~~")
        controller.addImage(beautyImage.image)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func twitterTapped(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        controller.setInitialText("呵呵呵~~~")
        controller.addImage(beautyImage.image)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func weiboTapped(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        
        controller.setInitialText("呵呵呵~~~")
        controller.addImage(beautyImage.image)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}