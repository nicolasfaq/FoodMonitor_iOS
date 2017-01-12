//
//  Aliments.swift
//  FoodMonitor
//
//  Created by Developer on 28/12/2016.
//  Copyright © 2016 nicolas.faqir. All rights reserved.
//

import Foundation


struct Aliment: Equatable {
    /*var date: Date
    var title: String {
        return name
    }*/

    let name: String
    let datePeremp: String

    static func ==(lhs: Aliment, rhs: Aliment) -> Bool {

        if lhs.name == rhs.name && lhs.datePeremp == rhs.datePeremp {
            return true
        }
        return false
    }
}
