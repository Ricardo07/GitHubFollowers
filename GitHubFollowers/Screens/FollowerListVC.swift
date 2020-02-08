//
//  FollowerListVC.swift
//  GitHubFollowers
//
//  Created by Ricardo Batista on 1/19/20.
//  Copyright © 2020 Ricardo Batista. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        NetworkManager.shared.getFollower(for: username, page: 1) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let followers):
                print(followers)
                
            case .failure(let error):
                self.presentGFAlertOnTheMainThread(title: "Bad Stuff Happend", message: error.rawValue, buttonTitle: "OK")
            }
        }
    }

}
