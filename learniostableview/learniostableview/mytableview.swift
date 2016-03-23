//
//  mytableview.swift
//  learniostableview
//
//  Created by ChenXin on 16/3/23.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class mytableview: UITableView, UITableViewDataSource {
    
    let TAG_CELL_LABEL = 1
    let dataArr = ["hehe", "haha", "hzhz"]
    
    var data:NSDictionary!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        //通过一个自己设定的 plist 文件来初始化一个 NSDictionary 字典
        data = NSDictionary(contentsOfURL: NSBundle.mainBundle().URLForResource("data", withExtension: "plist")!)!
        
        self.dataSource = self
    }
    
    

    
    internal func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return data.count
    }// Default is 1 if not implemented
    
    
    internal func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data.allKeys[section] as? String
    }

    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
        
        let label = cell?.viewWithTag(TAG_CELL_LABEL) as! UILabel
        label.text = (data.allValues[indexPath.section] as! NSArray).objectAtIndex(indexPath.row) as? String
        
        return cell!
        
    }
    
    @available(iOS 2.0, *)
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (data.allValues[section] as! NSArray).count
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
