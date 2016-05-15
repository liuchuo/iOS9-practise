//
//  ViewController.swift
//  自定义控件
//
//  Created by ChenXin on 16/5/10.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet var img2: UIImageView!
    
    private var flag1 : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.addSubview(img1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        func completeHandler(v: Bool) {
            print("Anim complete")
            
            flag1 = !flag1
        }
//
//        if flag1 {
//            UIView.transitionFromView(img1, toView: img2, duration: 3.0, options: UIViewAnimationOptions.TransitionFlipFromLeft, completion: completeHandler)
//        } else {
//            UIView.transitionFromView(img2, toView: img1, duration: 3.0, options: UIViewAnimationOptions.TransitionFlipFromRight, completion: completeHandler)
//        }
        func anim() {
            img1.alpha = 0.5
            img1.center = CGPoint(x: 50, y: 200)
        }
        
        UIView.transitionWithView(img1, duration: 1.0, options: UIViewAnimationOptions.TransitionNone, animations: anim, completion: completeHandler)
        
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationTransition(UIViewAnimationTransition.CurlDown, forView: img1, cache: true)
//        UIView.setAnimationDuration(2.0)
//        UIView.commitAnimations()
        
    }
}

