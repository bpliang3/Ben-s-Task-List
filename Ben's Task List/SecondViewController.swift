//
//  SecondViewController.swift
//  Ben's Task List
//
//  Created by Ben Liang on 11/11/15.
//  Copyright (c) 2015 Ben Liang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate  {

    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    // Events
    @IBAction func btnAddTask_Click(sender: UIButton) {
        //println("Button was clicked")
        taskMGR.addTask(txtTask.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        
        self.tabBarController?.selectedIndex = 0
    }
    
    
    // IOS Touch Functions
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

