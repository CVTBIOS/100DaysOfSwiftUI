//
//  ContentView.swift
//  WeSplit
//
//  Created by Thorsten Boldin on 13.01.20.
//  Copyright © 2020 UVB-Data GmbH. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2

    let tipPercentages = [1, 2, 5, 10, 15, 20, 25, 30, 0]

    var body: some View {
    NavigationView {
        Form {
            Section {
                TextField("Check Amount", text: $checkAmount)
                    .keyboardType(.decimalPad)
                Picker("Number of People", selection: $numberOfPeople) {
                    ForEach(2 ..< 100) {
                        Text("\($0) people")
                    }
                }
            }
//            Section {
//                Picker("Tip percentage", selection: $tipPercentage) {
//                    ForEach(0 ..< tipPercentage.count) {
//                        Text("\(self.tipPercentage[$0])%")
//                    }
//                }
//            }
            Section {
                Text("$\(checkAmount)")
            }
        }
        }
        .navigationBarTitle("WeSplit")

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
