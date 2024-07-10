//
//  TabFour.swift
//  FinancialLiteracyApp
//
//  Created by sermacbook_20 on 7/2/24.
//

import SwiftUI

struct TabFour: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Levels")
                        .font(.custom("AmericanTypewriter", size: 36))
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .padding(.top, 60)
                    
                    Spacer()
                    
                    VStack(spacing: 20) {
                        NavigationLink(destination: BudgetInfo()) {
                            VStack {
                                Image("budget")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .padding(.bottom, 10)
                                
                                Text("Budgeting")
                                    .font(.custom("AmericanTypewriter", size: 18))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                            }
                        }
                        
                        NavigationLink(destination: BudgetQuiz()) {
                            VStack {
                                Image("search")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .padding(.bottom, 10)
                                
                                Text("Budgeting Quiz")
                                    .font(.custom("AmericanTypewriter", size: 18))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                            }
                        }
                        
                        NavigationLink(destination: TaxInfo()) {
                            VStack {
                                Image("credit")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .padding(.bottom, 10)
                                
                                Text("Credit")
                                    .font(.custom("AmericanTypewriter", size: 18))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                            }
                        }
                        
                        NavigationLink(destination: TaxQuiz()) {
                            VStack {
                                Image("search")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .padding(.bottom, 10)
                                
                                Text("Credit Quiz")
                                    .font(.custom("AmericanTypewriter", size: 18))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                    
                    Spacer()
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct TabFour_Previews: PreviewProvider {
    static var previews: some View {
        TabFour()
    }
}

