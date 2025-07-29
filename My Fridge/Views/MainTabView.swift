//
//  ContentView.swift
//  My Fridge
//
//  Created by Thomas Dini on 7/28/25.
//

import SwiftUI

struct MainTabView: View {
    //MARK: Properties
    @State private var selectedTabIndex: Int = 0
    var foodVM: FoodViewModel = .init()
    
    //MARK: View
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            CookingView()
                .tabItem {
                    Image(systemName: "oven")
                    Text("Cooking")
                }.id(0)
            
            ListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("My Fridge")
                }.id(1)
            
            AddView()
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Add")
                }.id(2)
            
            FoodsView()
                .tabItem {
                    Image(systemName: "carrot")
                    Text("Foods")
                }.id(3)
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }.id(4)
            
        }
    }
}

#Preview {
    MainTabView()
}
