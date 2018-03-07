//
//  CompleteViewController.swift
//  ToDoListApp
//
//  Created by Brian Estep on 3/7/18.
//  Copyright © 2018 Brian Estep. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {
    
    var previousVC = ToDoTableViewControllTableViewController()
    var selectedToDo = ToDoItem()
    var indexValue : Int

    @IBOutlet weak var Label_Description: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Label_Description.text = selectedToDo.name
    }
    
    @IBAction func CompleteTask(_ sender: Any) {
        previousVC.toDos.remove(indexValue)
        
        //previousVC.toDos.append(a)
        //previousVC.tableView.reloadData()
        
        //navigationController?.popViewController(animated: true)
    }
}
