//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Ricardo Batista on 4/16/20.
//  Copyright © 2020 Ricardo Batista. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "MMM yyyy"
        return dateformatter.string(from: self)
    }
}

