//
//  FavoriteListVC.swift
//  GitHubFollowers
//
//  Created by Ricardo Batista on 1/17/20.
//  Copyright © 2020 Ricardo Batista. All rights reserved.
//

import UIKit

class FavoriteListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistanceManger.retreiveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }
}
