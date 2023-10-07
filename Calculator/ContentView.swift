//
//  ContentView.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {

    @State private var text: String = ""
    @State private var operation: String = ""
    @State private var selectedOperand: String = ""
    @State private var previousNum: Double = 0
    @State private var isResult: Bool = false
    var body: some View {
        VStack {
            Spacer()
            Text("KALKULATOR").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Spacer()
            TextField(
                    "",
                    text: $text
                )
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .frame(width: 315, height: 60)
                .border(Color.black, width: 2)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack {
                CalcButton(text: "1", width: 100, height: 60, operation: $operation)
                CalcButton(text: "2", width: 100, height: 60, operation: $operation)
                CalcButton(text: "3", width: 100, height: 60, operation: $operation)
            }
            HStack {
                CalcButton(text: "4", width: 100, height: 60, operation: $operation)
                CalcButton(text: "5", width: 100, height: 60, operation: $operation)
                CalcButton(text: "6", width: 100, height: 60, operation: $operation)
            }
            HStack {
                CalcButton(text: "7", width: 100, height: 60, operation: $operation)
                CalcButton(text: "8", width: 100, height: 60, operation: $operation)
                CalcButton(text: "9", width: 100, height: 60, operation: $operation)
            }
            HStack {
                CalcButton(text: "0", width: 100, height: 60, operation: $operation)
                CalcButton(text: "+", width: 100, height: 60, operation: $operation)
                CalcButton(text: "-", width: 100, height: 60, operation: $operation)
            }
            HStack {
                CalcButton(text: "*", width: 100, height: 60, operation: $operation)
                CalcButton(text: "/", width: 100, height: 60, operation: $operation)
                CalcButton(text: "sin", width: 100, height: 60, operation: $operation)
            }
            CalcButton(text: "Oblicz", width: 315, height: 60, operation: $operation)
        }
        .onChange(of: operation) {
            if (operation == "+" || operation == "-" || operation == "*" || operation == "/") {
                previousNum = Double(text)!
                selectedOperand = operation
                text = ""
            }
            else if (operation == "Oblicz" && selectedOperand != "") {
                let var1 = Double (previousNum)
                let var2 = Double (text)
                switch selectedOperand {
                case "+":
                    text = String (var1+(var2 ?? 0))
                case "-":
                    text = String (var1-(var2 ?? 0))
                case "*":
                    text = String (var1*(var2 ?? 0))
                case "/":
                    if (var2 == 0) {
                        text = "debil"
                    }
                    else {
                        text = String (var1/(var2 ?? 0))
                    }
                default: break
                    
                }
                isResult = true
            }
            else {
                if (isResult) {
                    text = ""
                    isResult = false
                }
                text += operation
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
