//
//  Food.swift
//  My Fridge
//
//  Created by Thomas Dini on 7/28/25.
//

import Foundation



struct Food: Identifiable {
    var id: UUID
    var name: String
    var quantity: Int
    var refrigerated: Bool
    var expirationDate: Date?
    var grouping: FoodGrouping?
}
