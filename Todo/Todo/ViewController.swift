//
//  ViewController.swift
//  Todo
//
//  Created by ChenXin on 16/3/8.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

//定义一个全局变量。作为本地的数据库（运行时的数据库，只保存在内存里面）
//定义全局变量，使得整个app里面的其他代码文件都能访问它
var todos: [TodoModel] = []
var filteredTodos:[TodoModel] = []

func dateFromString(dateStr: String) -> NSDate? {
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let date = dateFormatter.dateFromString(dateStr)
    return date
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchDisplayDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        todos = [TodoModel(id: "1", image: "child-selected", title: "1.去玩", date: dateFromString("2014-11-02")!),
            TodoModel(id: "2", image: "shopping-cart-selected", title: "2.去购物", date: dateFromString("2014-10-28")!),
            TodoModel(id: "3", image: "phone-selected", title: "3.打电话", date: dateFromString("2015-11-11")!),
            TodoModel(id: "4", image: "travel-selected", title: "4.Travel to Europe", date: dateFromString("1995-01-01")!)]
        
        //激活edit模式
        navigationItem.leftBarButtonItem = editButtonItem()
        
        //隐藏搜索栏
        var contentOffset = tableView.contentOffset
        contentOffset.y += searchDisplayController!.searchBar.frame.size.height
        tableView.contentOffset = contentOffset
    }
        
    
    
    //MARK-UITableViewDataSource
    @available(iOS 2.0, *)
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == searchDisplayController?.searchResultsTableView {
            return filteredTodos.count
        }
        
        return todos.count
    }
    
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    @available(iOS 2.0, *)
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("todoCell")! as UITableViewCell
        
        var todo: TodoModel
        if tableView == searchDisplayController?.searchResultsTableView {
            todo = filteredTodos[indexPath.row] as TodoModel
        }
        else {
            todo = todos[indexPath.row] as TodoModel
        }
       
        var image = cell.viewWithTag(101) as! UIImageView
        var title = cell.viewWithTag(102) as! UILabel
        var date = cell.viewWithTag(103) as! UILabel
        image.image = UIImage(named: todo.image)
        title.text = todo.title
        
        let locale = NSLocale.currentLocale()
        let dateFormat = NSDateFormatter.dateFormatFromTemplate("yyyy-MM-dd", options: 0, locale: locale)
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = dateFormat
        
        date.text = dateFormatter.stringFromDate(todo.date)
        return cell
    }
    
    
    
    //MARK-UITableViewDeleage
    public func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            todos.removeAtIndex(indexPath.row)
            self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    //Edit Mode
    override func setEditing(editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        self.tableView.setEditing(editing, animated: animated)
        
    }

    
    // Move cell
    public func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return editing
    }
    
    public func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let todo = todos.removeAtIndex(sourceIndexPath.row)
        todos.insert(todo, atIndex: destinationIndexPath.row)
    }
    
    
    // Search
    public func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchString searchString: String?) -> Bool {
        
        filteredTodos = todos.filter(){$0.title.rangeOfString(searchString!) != nil}
        return true
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(segue: UIStoryboardSegue) {
        print("closed")
        tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "EditTodo" {
            var vc = segue.destinationViewController as! DetailViewController
            var indexPath = tableView.indexPathForSelectedRow
            if let index = indexPath {
                vc.todo = todos[index.row]
            }
        }
    }


}

