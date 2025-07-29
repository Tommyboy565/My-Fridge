//
//  FoodsView.swift
//  My Fridge
//
//  Created by Thomas Dini on 7/28/25.
//

import SwiftUI

struct FoodsView: View {
    //MARK: Properties
    @State var foods: [Food] = FoodViewModel().testFoods
    
    //MARK: View
    var body: some View {
        List {
            Section {
                ForEach(foods) { food in
                    if food.grouping == FoodGrouping.produce {
                        HStack {
                            Text(food.name)
                            Spacer()
                            Text("\(food.quantity)")
                        }
                    }
                }
            } header: {
                Text("Produce")
            }
            
            Section {
                ForEach(foods) { food in
                    if food.grouping == FoodGrouping.meat {
                        HStack {
                            Text(food.name)
                            Spacer()
                            Text("\(food.quantity)")
                        }
                    }
                }
            } header: {
                Text("Meat")
            }
            
            Section {
                ForEach(foods) { food in
                    if food.grouping == FoodGrouping.frozen {
                        HStack {
                            Text(food.name)
                            Spacer()
                            Text("\(food.quantity)")
                        }
                    }
                }
            } header: {
                Text("Frozen")
            }
            
            Section {
                ForEach(foods) { food in
                    if food.grouping == FoodGrouping.canned {
                        HStack {
                            Text(food.name)
                            Spacer()
                            Text("\(food.quantity)")
                        }
                    }
                }
            } header: {
                Text("Canned")
            }
            
            Section {
                ForEach(foods) { food in
                    if food.grouping == FoodGrouping.bread {
                        HStack {
                            Text(food.name)
                            Spacer()
                            Text("\(food.quantity)")
                        }
                    }
                }
            } header: {
                Text("Breads")
            }
            
            Section {
                ForEach(foods) { food in
                    if food.grouping == FoodGrouping.dairy {
                        HStack {
                            Text(food.name)
                            Spacer()
                            Text("\(food.quantity)")
                        }
                    }
                }
            } header: {
                Text("Dairy")
            }
        }
        .listStyle(.grouped)
    }
}

#Preview {
    FoodsView()
}
