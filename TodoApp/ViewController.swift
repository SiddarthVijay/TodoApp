//
//  ViewController.swift
//  TodoApp
//
//  Created by Siddarth Vijay on 07/06/19.
//  Copyright © 2019 Siddarth Vijay. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            if indexPath.row % 5 == 0 {
                label.text = String(indexPath.row) + ")" + "Take a jog"
            } else if indexPath.row % 4 == 0 {
                label.text = String(indexPath.row) + ")" + "Watch a movie"
            } else if indexPath.row % 3 == 0 {
                label.text = String(indexPath.row) + ")" + "Code an app"
            } else if indexPath.row % 2 == 0 {
                label.text = String(indexPath.row) + ")" + "Walk the dog"
            } else if indexPath.row % 1 == 0 {
                label.text = String(indexPath.row) + ")" + "Study design patterns"
            }
        }
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

