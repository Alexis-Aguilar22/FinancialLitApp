//
//  ContentView.swift
//  FinancialLiteracyApp
//
//  Created by sermacbook_20 on 7/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Home_Screen()
                .tabItem{
                    Image(systemName: "globe")
                    Text("Home")
                }
            TabTwo()
                .tabItem{
                    Image(systemName: "alarm")
                    Text("Budgeting")
                }
            TabThree()
                .tabItem{
                    Image(systemName: "stopwatch")
                    Text("Taxes")
                }
            TabFour()
                .tabItem{
                    Image(systemName: "timer")
                    Text("Games")
                }
        }
    }
}

#Preview {
    ContentView()
}
