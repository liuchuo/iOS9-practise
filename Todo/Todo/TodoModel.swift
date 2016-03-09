//
//  TodoModel.swift
//  Todo
//
//  Created by ChenXin on 16/3/9.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class TodoModel: NSObject {
    var id: String
    var image: String
    var title: String
    var date: NSDate
    
    init (id: String, image: String, title: String, date: NSDate) {
        self.id = id
        self.image = image
        self.title = title
        self.date = date
    }
}

