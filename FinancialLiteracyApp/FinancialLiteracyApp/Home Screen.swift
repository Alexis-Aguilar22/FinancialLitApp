//
//  Home Screen.swift
//  FinancialLiteracyApp
//
//  Created by sermacbook_20 on 7/9/24.
//

import SwiftUI
import UIKit

struct Home_Screen: View {
    @State var backgroundColor = Color.red
    var body: some View {
        ZStack {
            //backgroundColor
            //rgb 0-1 for dark green:(red: 0.050980392156862744, green: 0.2196078431372549, blue: 0.18823529411764706)
            //the middle green's green is actually 0.47058823529411764, but I kinda like this better
            let top_color = Color(red: 0.611764705882353, green: 0.7725490196078432, blue: 0.6313725490196078)
            let bottom_color = Color(red: 0.28627450980392155, green: 0.6274509803921569, blue: 0.18823529411764706)
            LinearGradient(gradient: Gradient(colors:[top_color.opacity(0.2), bottom_color]),
                          startPoint: .top,
                          endPoint: .bottom)
            Image("FourthTreeImage")
                .resizable()
                .frame(width: 400, height: 550)
            VStack {
                Text("Welcome to [App Name]!")
                    .fontWeight(.heavy)
                    .font(.title)
                Text("Money grows on the tree of persistance")
                    .padding(.top, 550)
                Text("- Japanese Proverb")
            }
        }.ignoresSafeArea()
        
        
    }
    
    
    
    
    
}

#Preview {
    Home_Screen()
}
