//
//  TaskManager.swift
//  Ben's Task List
//
//  Created by Ben Liang on 11/11/15.
//  Copyright (c) 2015 Ben Liang. All rights reserved.
//

import UIKit

var taskMGR: TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {

    var tasks = [task]()
    
    func addTask(name: String, desc: String) {
        
        tasks.append(task(name: name, desc: desc))
    }
    
}
