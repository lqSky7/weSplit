//
//  ContentView.swift
//  WeSplit
//
//  Created by ca5 on 03/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var tapCnt = 0
    var body: some View {
        Button("TAP COUNTER: \(tapCnt)"){
            tapCnt+=1
        }
    }
        
}

#Preview {
    ContentView()
}

