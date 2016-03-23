//
//  ViewController.swift
//  browse
//
//  Created by ChenXin on 16/3/22.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webview: UIWebView!
    
    @IBOutlet var btnGo: UIButton!
    
    @IBOutlet var urlInput: UITextField!
    
    
    @IBAction func btnGoClicked(sender: AnyObject) {
        webview.loadRequest(NSURLRequest(URL: NSURL(string : urlInput.text!)!))
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

