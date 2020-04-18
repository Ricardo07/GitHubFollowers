//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by Ricardo Batista on 4/18/20.
//  Copyright © 2020 Ricardo Batista. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
