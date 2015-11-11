//
//  FirstViewController.swift
//  Ben's Task List
//
//  Created by Ben Liang on 11/11/15.
//  Copyright (c) 2015 Ben Liang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblTasks: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Returning to view
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData()
    }
    
    //UITableViewDelegate
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     
        if editingStyle == UITableViewCellEditingStyle.Delete {
            //println("Delete this row")
            taskMGR.tasks.removeAtIndex(indexPath.row)
            tblTasks.reloadData()
        }
    }
    
    // UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskMGR.tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.textLabel?.text = taskMGR.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMGR.tasks[indexPath.row].desc
        
        return cell
        
    }


}

