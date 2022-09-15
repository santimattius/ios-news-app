//
//  Date+Extension.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 14/9/22.
//

import Foundation

extension Date {

    func toString(format: String = "dd-MM-yyyy") -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
