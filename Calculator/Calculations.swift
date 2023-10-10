//
//  Calculations.swift
//  Calculator
//
//  Created by student on 07/10/2023.
//

import Foundation

struct Calculations {
    func calculate(var1: Double, var2: Double?, operand: String) -> Double? {
        switch operand {
        case "+":
            return var1+(var2 ?? 0)
        case "-":
            return var1-(var2 ?? 0)
        case "*":
            return var1*(var2 ?? 0)
        case "/":
            if (var2 == 0) {
                return nil
            }
            else {
                return var1/(var2 ?? 1)
            }
        case "sin":
            return sin(var1)
        default: return nil
        }
    }
}
