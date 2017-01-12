//
//  Storage.swift
//  FoodMonitor
//
//  Created by Developer on 28/12/2016.
//  Copyright © 2016 nicolas.faqir. All rights reserved.
//

import Foundation

class Storage {

    private var storageArray = [Aliment]()

    var allAliments: [Aliment] {
        return storageArray
    }

    func add(_ aliment: Aliment) {

        if storageArray.contains(aliment) {
            return
        }
        storageArray.append(aliment)
    }
}
