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
        
        let gj = ToDoItem()
        gj.name = "Get a Job"
        gj.important = true
        
        let kk = ToDoItem()
        kk.name = "Here Kitty Kitty"
        kk.important = false
        
        let em = ToDoItem()
        em.name = "Email Sweetie"
        em.important = false
        
        let mm = ToDoItem()
        mm.name = "Manually Move"
        mm.important = false
        
        let dd = ToDoItem()
        dd.name = "Call Dad"
        dd.important = false
        
        let cm = ToDoItem()
        cm.name = "Call Mom"
        cm.important = true
        
        let xx = ToDoItem()
        xx.name = "Pay Bill"
        xx.important = true
        
        return [eg, dg, gf, sh, hh, gj, kk, em, mm, dd, cm, xx]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
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
}
