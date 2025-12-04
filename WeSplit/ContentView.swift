//
//  ContentView.swift
//  WeSplit
//
//  Created by ca5 on 03/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Form{
                Text("HII")
                Text("HII")
                Section{
                    Text("HII")
                    Text("HII")
                }
                Text("HII")
            }
            .navigationTitle("SWUI")
            .navigationBarTitleDisplayMode(.automatic)
        }

    }
        
}

#Preview {
    ContentView()
}

