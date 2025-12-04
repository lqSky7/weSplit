//
//  ContentView.swift
//  WeSplit
//
//  Created by ca5 on 03/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = 0.0;
    @State private var people = 2;
    @State private var tax = 0;
    @FocusState private var isInputFocused: Bool
    
    
    var displayAbleAmount: Double {
        let peopleD = Double(people)
        let taxD = Double(tax)
        let amountD = Double(amount)
        let total = amountD + (amountD*taxD/100)
        let perPer = total/peopleD
        
        return perPer
    }
    
    let taxPerArray = [0, 10, 20, 30, 40]
    
    var body: some View{
        NavigationStack{
            Form{
                Section{
                    TextField("Enter the amount to be split: ", value: $amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD")).keyboardType(.decimalPad).focused($isInputFocused)
                    
                    
                    
                    Picker("Number of people", selection: $people){
                        ForEach(1..<10){
                            k in
                            Text("\(k) People")
                        }
                    }.pickerStyle(.navigationLink)
                }
                
                Section ("How much do you want to tip?"){
                    
                    Picker("Select Tax Percent", selection: $tax){
                        ForEach(taxPerArray, id: \.self){
                            k in
                            Text("\(k)%")
                        }
                    }.pickerStyle(.segmented)
                }
                
              
                
                Section("Each person should pay"){
                 
                    Text(displayAbleAmount, format: .currency(code: Locale.current.currency? .identifier ?? "USD"))
                }
                
                
            }.navigationTitle("WeSplit")
                .navigationBarTitleDisplayMode(.automatic)
                .toolbar{
                    if(isInputFocused){
                        Button("Done"){
                            isInputFocused = false
                        }.buttonStyle(.glassProminent).tint(.black.opacity(0.7))
                            
                            
                    }
                }
        }
    }
}
        


#Preview {
    ContentView()
}

