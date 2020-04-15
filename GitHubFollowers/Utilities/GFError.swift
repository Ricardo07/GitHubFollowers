//
//  GFError.swift
//  GitHubFollowers
//
//  Created by Ricardo Batista on 4/15/20.
//  Copyright © 2020 Ricardo Batista. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUserName = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data retreived from the server was invalid. Please try again."
}
