//
//  ViewController.swift
//  L02using nib
//
//  Created by ChenXin on 16/4/26.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func nextBtnClicked(sender: AnyObject) {
        self.presentViewController(a(nibName: "a", bundle: nil), animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

