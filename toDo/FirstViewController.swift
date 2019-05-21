//
//  FirstViewController.swift
//  toDo
//
//  Created by Giovanni Rosas-Marin on 5/20/19.
//  Copyright © 2019 Codepath. All rights reserved.
//

import UIKit
 var list = ["Buy soda", " Run to School", "Get food", "Study"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return(list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
           list.remove(at: indexPath.row)
            myTableView.reloadData()
            
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if myTableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCell.AccessoryType.checkmark {
            myTableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.none
        }
        else{
            myTableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.checkmark
        }
        
    }
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
//    {
//        tableView.deselectRow(at: indexPath, animated: true)
//
//        if indexPath.row < list.count
//        {
//            let item = todoItems[indexPath.row]
//            item.done = !item.done
//
//            tableView.reloadRows(at: [indexPath], with: .automatic)
//        }
//    }
//
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
   
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

