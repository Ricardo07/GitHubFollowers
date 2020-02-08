//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Ricardo Batista on 1/20/20.
//  Copyright © 2020 Ricardo Batista. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentGFAlertOnTheMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true) // beacause we are on closure
        }
    }
}