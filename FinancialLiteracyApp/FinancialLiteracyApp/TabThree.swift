//
//  TabTwo.swift
//  FinancialLiteracyApp
//
//  Created by sermacbook_20 on 7/2/24.
//

import SwiftUI

struct TabThree: View {
    @State var presentPopup = false
    //maybe change the background color?
    @State var backgroundColor = Color(red: 0.611764705882353, green: 0.7725490196078432, blue: 0.6313725490196078).opacity(0.7)
    var body: some View {
        ZStack {
            backgroundColor
            VStack {
                Text("View a Simulated Tax Filing Below")
                    .font(.title2)
                    .fontWeight(.bold)
                //Add simulated tax filing here
                Button("More Help and Definitions") {
                    presentPopup = true
                } .fontWeight(.bold)
                .popover(isPresented: $presentPopup) {
                    Button {
                        presentPopup = false
                    } label: {
                        Text("Done")
                            .frame(maxWidth: .infinity)
                    }
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    .font(.title2)
                    .padding(.top)
                    .frame(maxHeight: .infinity, alignment: .top)
                    .tint(.green)
                    
                    Text("Common Tax Terms Defined")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Definitions are from the IRS website")
                        .font(.title3)
                        .padding(.bottom)
                    Text("Adjusted Gross Income (AGI): Gross income reduced by certain amounts, such as a deductible IRA contribution or student loan interest.")
                        .padding(.bottom)
                    Text("Capital Gains: A capital gain occurs when you sell a capital asset, such as real estate, stocks or bonds, for more than you paid for it.")
                        .padding(.bottom)
                    Text("Dependent: A qualifying child or qualifying relative, other than the taxpayer or spouse, who entitles the taxpayer to claim a dependency exemption.")
                        .padding(.bottom)
                    Text("Filing Status: Your filing status is an IRS classification based generally on your marital status. It is used for your filing requirements, standard deduction, and the amount of your taxes.")
                        .padding(.bottom)
                    Text("Sole Proprietor: Someone who owns a business by themselves. They report their share of income and expenses on Form 1040, Schedule C.")
                        .padding(.bottom)
                    Text("Tax Deduction: A tax deduction is an amount that reduces the amount of your income that can be taxed, lowering your tax bill.")
                }
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    TabThree()
}
