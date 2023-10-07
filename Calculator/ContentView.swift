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
            Text("KALKULATOR").font(.largeTitle)
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
                CalcButton(text: "1", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
                CalcButton(text: "2", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
                CalcButton(text: "3", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
            }
            HStack {
                CalcButton(text: "4", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
                CalcButton(text: "5", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
                CalcButton(text: "6", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
            }
            HStack {
                CalcButton(text: "7", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
                CalcButton(text: "8", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
                CalcButton(text: "9", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
            }
            HStack {
                CalcButton(text: "0", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
                CalcButton(text: "+", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
                CalcButton(text: "-", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
            }
            HStack {
                CalcButton(text: "*", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
                CalcButton(text: "/", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
                CalcButton(text: "sin", width: 100, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
            }
            CalcButton(text: "Oblicz", width: 315, height: 60, textField: $text, previousNum: $previousNum, selectedOperand: $selectedOperand, isResult: $isResult)
        }
        .onChange(of: operation) {
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
