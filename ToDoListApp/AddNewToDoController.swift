//
//  AddNewToDoController.swift
//  ToDoListApp
//
//  Created by Brian Estep on 3/6/18.
//  Copyright © 2018 Brian Estep. All rights reserved.
//

import UIKit

class AddNewToDoController: UIViewController {
    
    var previousVC = ToDoTableViewControllTableViewController()

    @IBOutlet weak var ToDoText: UITextField!
    @IBOutlet weak var ToDoImportance: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func AddTapped(_ sender: Any) {
        let a = ToDoItem()
        
        if let aw = ToDoText.text {
            a.name = ToDoText.text!
            a.important = ToDoImportance.isOn
        } else {
            a.name = "Test Input"
            a.important = true
        }
        
        previousVC.toDos.append(a)
        previousVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
    }
}
