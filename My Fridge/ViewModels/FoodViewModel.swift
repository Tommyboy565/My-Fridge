//
//  FoodsViewModel.swift
//  My Fridge
//
//  Created by Thomas Dini on 7/28/25.
//

import Foundation
import SwiftUI
import CoreData


class FoodViewModel: ObservableObject {
    @Published var foods: [Food] = []
    @Published var testFoods: [Food] = [
        Food(id: UUID(), name: "Milk", quantity: 2, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 7, to: Date()), grouping: .dairy),
        Food(id: UUID(), name: "Yogurt", quantity: 6, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 10, to: Date()), grouping: .dairy),
        Food(id: UUID(), name: "Cheddar Cheese", quantity: 1, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 20, to: Date()), grouping: .dairy),
        Food(id: UUID(), name: "Chicken Breast", quantity: 4, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 3, to: Date()), grouping: .meat),
        Food(id: UUID(), name: "Ground Beef", quantity: 2, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 2, to: Date()), grouping: .meat),
        Food(id: UUID(), name: "Salmon Fillet", quantity: 1, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 1, to: Date()), grouping: .meat),
        Food(id: UUID(), name: "Apple", quantity: 10, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .day, value: 14, to: Date()), grouping: .produce),
        Food(id: UUID(), name: "Banana", quantity: 6, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .day, value: 5, to: Date()), grouping: .produce),
        Food(id: UUID(), name: "Carrots", quantity: 8, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 15, to: Date()), grouping: .produce),
        Food(id: UUID(), name: "Potatoes", quantity: 12, refrigerated: false, expirationDate: nil, grouping: .produce),
        Food(id: UUID(), name: "White Rice", quantity: 1, refrigerated: false, expirationDate: nil, grouping: .canned),
        Food(id: UUID(), name: "Pasta", quantity: 3, refrigerated: false, expirationDate: nil, grouping: .canned),
        Food(id: UUID(), name: "Canned Beans", quantity: 5, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .year, value: 2, to: Date()), grouping: .canned),
        Food(id: UUID(), name: "Peanut Butter", quantity: 1, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .year, value: 1, to: Date()), grouping: .canned),
        Food(id: UUID(), name: "Whole Wheat Bread", quantity: 1, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .day, value: 4, to: Date()), grouping: .bread),
        Food(id: UUID(), name: "Brioche Buns", quantity: 4, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .day, value: 6, to: Date()), grouping: .bread),
        Food(id: UUID(), name: "Frozen Peas", quantity: 2, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .month, value: 6, to: Date()), grouping: .frozen),
        Food(id: UUID(), name: "Frozen Pizza", quantity: 3, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .month, value: 8, to: Date()), grouping: .frozen),
        Food(id: UUID(), name: "Ice Cream", quantity: 1, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .month, value: 4, to: Date()), grouping: .frozen),
        Food(id: UUID(), name: "Eggs", quantity: 12, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 18, to: Date()), grouping: .dairy),
        Food(id: UUID(), name: "Tofu", quantity: 2, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 12, to: Date()), grouping: .meat),
        Food(id: UUID(), name: "Spinach", quantity: 1, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 5, to: Date()), grouping: .produce),
        Food(id: UUID(), name: "Oats", quantity: 1, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .year, value: 1, to: Date()), grouping: .canned),
        Food(id: UUID(), name: "Crackers", quantity: 2, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .month, value: 3, to: Date()), grouping: .canned),
        Food(id: UUID(), name: "Bagels", quantity: 5, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .day, value: 3, to: Date()), grouping: .bread),
        Food(id: UUID(), name: "Frozen Berries", quantity: 1, refrigerated: false, expirationDate: Calendar.current.date(byAdding: .month, value: 9, to: Date()), grouping: .frozen),
        Food(id: UUID(), name: "Mozzarella Cheese", quantity: 1, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 25, to: Date()), grouping: .dairy),
        Food(id: UUID(), name: "Sausages", quantity: 6, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 5, to: Date()), grouping: .meat),
        Food(id: UUID(), name: "Lettuce", quantity: 1, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: 4, to: Date()), grouping: .produce),
        Food(id: UUID(), name: "Outdated Yogurt", quantity: 1, refrigerated: true, expirationDate: Calendar.current.date(byAdding: .day, value: -3, to: Date()), grouping: .dairy)
    ]
    
    func addFood(_ food: Food) {
        foods.append(food)
    }
    
    func removeFood(at index: Int) {
        foods.remove(at: index)
    }
}
