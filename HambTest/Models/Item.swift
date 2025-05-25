//
//  Item.swift
//  HambTest
//
//  Created by coulson on 5/25/25.
//

import Foundation

struct Item: Identifiable {
    let id: Int
    var title: String { "Item \(id)" }
}
