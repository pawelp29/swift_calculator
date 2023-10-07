//
//  CalcButton.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct CalcButton: View {
    var text: String
    var width: CGFloat
    var height: CGFloat
    @Binding var textField: String
    @Binding var previousNum: Double
    @Binding var selectedOperand: String
    @Binding var isResult: Bool
    var body: some View {
        Button(text) {
            let operation = text
            if (operation == "+" || operation == "-" || operation == "*" || operation == "/") {
                if (textField == "") {
                    previousNum = 0
                }
                else {
                    guard let num = Double(textField) else {
                        textField = "Dane niepoprawne"
                        isResult = true
                        return
                    }
                    previousNum = num
                }
                selectedOperand = operation
                textField = ""
            }
            else if (operation == "sin") {
                guard let var1 = Double (textField) else {
                    textField = "Dane niepoprawne"
                    isResult = true
                    return
                }
                textField = Calculations().calculate(var1: var1, var2: nil, operand: "sin")
                isResult = true
            }
            else if (operation == "Oblicz" && selectedOperand != "") {
                if (isResult) {
                    return
                }
                let var1 = Double (previousNum)
                guard let var2 = Double (textField) else {
                    textField = "Dane niepoprawne"
                    isResult = true
                    return
                }
                textField = Calculations().calculate(var1: var1,var2: var2, operand: selectedOperand)
                isResult = true
            }
            else {
                if (isResult) {
                    textField = ""
                    isResult = false
                }
                textField += operation
            }
        }.frame(width: width, height: height).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2).font(.largeTitle)
    }
}

#Preview {
    CalcButton(text: "",
               width: 100,
               height: 60,
               textField: .constant(""),
               previousNum: .constant(0),
               selectedOperand: .constant(""),
               isResult: .constant(false))
}
