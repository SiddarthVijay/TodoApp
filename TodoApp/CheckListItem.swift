//
//  CheckListItem.swift
//  TodoApp
//
//  Created by Siddarth Vijay on 21/06/19.
//  Copyright © 2019 Siddarth Vijay. All rights reserved.
//

import Foundation

class CheckListItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
