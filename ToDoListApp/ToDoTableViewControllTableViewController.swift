//
//  ToDoTableViewControllTableViewController.swift
//  ToDoListApp
//
//  Created by Brian Estep on 3/5/18.
//  Copyright © 2018 Brian Estep. All rights reserved.
//

import UIKit

class ToDoTableViewControllTableViewController: UITableViewController {

    var toDos : [ToDoItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        toDos = createToDos()
    }
    
    func createToDos() -> [ToDoItem] {
        let eg = ToDoItem()
        eg.important = false
        eg.name = "Buy Eggs"
        
        let dg = ToDoItem()
        dg.name = "Walk the Dog"
        dg.important = true
        
        let gf = ToDoItem()
        gf.name = "Beat Woman"
        gf.important = true
        
        let sh = ToDoItem()
        sh.name = "Steal Something"
        sh.important = false
        
        let hh = ToDoItem()
        hh.name = "Head Home"
        hh.important = true
        
        let em = ToDoItem()
        em.name = "Email Sweetie"
        em.important = false
        
        let mm = ToDoItem()
        mm.name = "Manually Move"
        mm.important = false
        
        let cm = ToDoItem()
        cm.name = "Call Mom"
        cm.important = true
        
        let xx = ToDoItem()
        xx.name = "Pay Bill"
        xx.important = true
        
        return [eg, dg, gf, sh, hh, em, mm, cm, xx]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoTableViewIdentifier", for: indexPath)

        if toDos[indexPath.row].important == true {
            cell.textLabel?.text = "❗️ " + toDos[indexPath.row].name
        }
        else {
            cell.textLabel?.text = " ∙   " + toDos[indexPath.row].name
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddNewToDoController {
            addVC.previousVC = self
        }
        
        if let CompleteVC = segue.destination as? CompleteViewController {
            if let toDo = sender as? ToDoItem {
                CompleteVC.selectedToDo = toDo
                CompleteVC.previousVC = self
                CompleteVC.indexValue = 3
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "MoveToComplete", sender: toDos[indexPath.row])
    }
}
