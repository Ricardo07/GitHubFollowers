//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Ricardo Batista on 4/18/20.
//  Copyright © 2020 Ricardo Batista. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
