//
//  ViewController.swift
//  122
//
//  Created by ChenXin on 16/3/22.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var urlInput: UITextField!


    @IBOutlet weak var btnGo: UIButton!
    
    @IBOutlet weak var webpage: UIWebView!
    
    @IBAction func btnGoClicked(sender: AnyObject) {
        webpage.loadRequest(NSURLRequest(URL: NSURL(string : urlInput.text!)!))
        
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

