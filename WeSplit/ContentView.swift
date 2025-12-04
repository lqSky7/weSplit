//
//  ContentView.swift
//  WeSplit
//
//  Created by ca5 on 03/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        NavigationStack{
            Form{
                ForEach(0..<10)
                { t in
                    Section{
                        ForEach(0..<5){
                            number1 in
                            Text("ROW NO: \(number1+t)")}
                    }
                }
            }
            .navigationTitle("NUMBERS")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
        
}

#Preview {
    ContentView()
}

