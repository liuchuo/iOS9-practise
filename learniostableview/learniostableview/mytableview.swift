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
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.dataSource = self
    }

    
    public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }// Default is 1 if not implemented
    

    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
        
        var label = cell?.viewWithTag(TAG_CELL_LABEL) as! UILabel
        label.text = dataArr[indexPath.row]
        
        return cell!
        
    }
    
    @available(iOS 2.0, *)
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
