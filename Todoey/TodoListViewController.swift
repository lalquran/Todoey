//
//  ViewController.swift
//  Todoey
//
//  Created by Laith Alquran on 10/16/19.
//  Copyright © 2019 Laith Alquran. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    let itemArray = ["Go to work", "Work on iOS", "Watch Warriors"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - Tableview delegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        
        if (cell?.accessoryType == UITableViewCell.AccessoryType.checkmark) {
            cell?.accessoryType = UITableViewCell.AccessoryType.none
            
        }
        else{
            cell?.accessoryType = UITableViewCell.AccessoryType.checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }


}

