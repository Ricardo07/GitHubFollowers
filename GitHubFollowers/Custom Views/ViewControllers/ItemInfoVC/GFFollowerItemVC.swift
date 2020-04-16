//
//  GFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by Ricardo Batista on 4/16/20.
//  Copyright © 2020 Ricardo Batista. All rights reserved.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen , title: "Get Followers")
    }
}
