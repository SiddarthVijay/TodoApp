//
//  ViewController.swift
//  TodoApp
//
//  Created by Siddarth Vijay on 07/06/19.
//  Copyright © 2019 Siddarth Vijay. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {
    
    var todoList: TodoList
    
    required init?(coder aDecoder: NSCoder) {
        todoList = TodoList()
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.todos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem", for: indexPath)
        let item = todoList.todos[indexPath.row]
        
//        You can access cells in two ways, one through indexPath and other through the cell itself
        configureText(for: cell, with: item)
        configureCheckMark(for: cell, with: item)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let item = todoList.todos[indexPath.row]
            configureCheckMark(for: cell, with: item)
            tableView.deselectRow(at: indexPath, animated: true)
            
        }
    }
    
    func configureText(for cell: UITableViewCell, with item: CheckListItem) {
        if let label = cell.viewWithTag(1000) as? UILabel {
            label.text = item.text
        }
    }
    
    func configureCheckMark(for cell: UITableViewCell, with item: CheckListItem) {
        if item.checked {
            cell.accessoryType = .none
        } else {
            cell.accessoryType = .checkmark
        }
        item.toggleChecked()
    }
}

