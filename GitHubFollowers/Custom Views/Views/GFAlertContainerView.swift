//
//  GFAlertContainerView.swift
//  GitHubFollowers
//
//  Created by Ricardo Batista on 4/17/20.
//  Copyright © 2020 Ricardo Batista. All rights reserved.
//

import UIKit

class GFAlertContainerView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        backgroundColor = .systemBackground
        layer.cornerRadius = 16
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
        
        translatesAutoresizingMaskIntoConstraints = false
    }
}
