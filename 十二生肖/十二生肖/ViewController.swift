//
//  ViewController.swift
//  十二生肖
//
//  Created by ChenXin on 16/1/27.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }
    
    @IBAction func OKtapped(_ sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        //当该代码执行的时候写yearOfBirth的TextField失去焦点-resign辞职
        
        if let year = Int(yearOfBirth.text!) {
            let imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
            //图片区域的名字.image = UIImage(named: 图片的名字//是个字符串)
        } else {
            //notify the user
        }
    }

}

