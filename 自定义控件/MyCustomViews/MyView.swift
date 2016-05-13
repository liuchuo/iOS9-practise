//
//  MyView.swift
//  自定义控件
//
//  Created by ChenXin on 16/5/10.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

@IBDesignable class MyView: UIView {
    
    @IBInspectable var str : String = "Hello"
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clearColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet{
            layer.cornerRadius = cornerRadius
        }
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
