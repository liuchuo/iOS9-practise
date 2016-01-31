//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by ChenXin on 16/1/31.
//  Copyright © 2016年 ChenXin. All rights reserved.
//


//绑定 UIPickerViewDataSource：ViewControllerExtension

import UIKit

//返回一些静态的属性、信息
extension ViewController: UIPickerViewDataSource {
    @available(iOS 2.0, *)
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // returns the # of rows in each component..
    @available(iOS 2.0, *)
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return beauties.count
    }
}

//返回一些动态的方法
extension ViewController: UIPickerViewDelegate {
    @available(iOS 2.0, *)
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return beauties[row]
    }
}