//
//  Calculations.swift
//  Calculator
//
//  Created by student on 07/10/2023.
//

import Foundation

struct Calculations {
    func calculate(var1: Double, var2: Double?, operand: String) -> String {
        var result = ""
        switch operand {
        case "+":
            result = String (var1+(var2 ?? 0))
        case "-":
            result = String (var1-(var2 ?? 0))
        case "*":
            result = String (var1*(var2 ?? 0))
        case "/":
            if (var2 == 0) {
                result = "Próba dzielenia przez 0"
            }
            else {
                result = String (Double (var1/(var2 ?? 1)))
            }
        case "sin":
            result = String (sin(var1))
        default: break
        }
        return result
    }
}
