//
//  CalculationsTests.swift
//  CalculatorTests
//
//  Created by student on 10/10/2023.
//

import XCTest
@testable import Calculator

final class CalculationsTests: XCTestCase {

    func testPositiveScenarioForAddCalculation() {
        // given
        let c = Calculations()
        let v1: Double = 10
        let v2: Double = 20
        let op: String = "+"
        
        // when
        let result = c.calculate(var1: v1, var2: v2, operand: op)

        // then
        XCTAssertEqual(result, 30)
    }
    
    func testNegativeScenarioForAddCalculation() {
        // given
        let c = Calculations()
        let v1: Double = 10
        let v2: Double = 20
        let op: String = "+"
        
        // when
        let result = c.calculate(var1: v1, var2: v2, operand: op)

        // then
        XCTAssertNotEqual(result, 10)
    }
    
    func testPositiveScenarioForSubCalculation() {
        // given
        let c = Calculations()
        let v1: Double = 10
        let v2: Double = 20
        let op: String = "-"
        
        // when
        let result = c.calculate(var1: v1, var2: v2, operand: op)

        // then
        XCTAssertEqual(result, -10)
    }
    
    func testNegativeScenarioForSubCalculation() {
        // given
        let c = Calculations()
        let v1: Double = 10
        let v2: Double = 20
        let op: String = "-"
        
        // when
        let result = c.calculate(var1: v1, var2: v2, operand: op)

        // then
        XCTAssertNotEqual(result, 10)
    }
    
    func testPositiveScenarioForProdCalculation() {
        // given
        let c = Calculations()
        let v1: Double = 3
        let v2: Double = 5
        let op: String = "*"
        
        // when
        let result = c.calculate(var1: v1, var2: v2, operand: op)

        // then
        XCTAssertEqual(result, 15)
    }
    
    func testNegativeScenarioForProdCalculation() {
        // given
        let c = Calculations()
        let v1: Double = 3
        let v2: Double = 5
        let op: String = "*"
        
        // when
        let result = c.calculate(var1: v1, var2: v2, operand: op)

        // then
        XCTAssertNotEqual(result, 5)
    }
    
    func testPositiveScenarioForDivCalculation() {
        // given
        let c = Calculations()
        let v1: Double = 1
        let v2: Double = 2
        let op: String = "/"
        
        // when
        let result = c.calculate(var1: v1, var2: v2, operand: op)

        // then
        XCTAssertEqual(result, 0.5)
    }
    
    func testZeroScenarioForDivCalculation() {
        // given
        let c = Calculations()
        let v1: Double = 3
        let v2: Double = 0
        let op: String = "/"
        
        // when
        let result = c.calculate(var1: v1, var2: v2, operand: op)

        // then
        XCTAssertNil(result)
    }
    
    func testPositiveScenarioForSinCalculation() {
        // given
        let c = Calculations()
        let v1: Double = 3.14159
        let op: String = "sin"
        
        // when
        let result = c.calculate(var1: v1, var2: nil, operand: op)

        // then
        XCTAssertEqual(result, sin(3.14159))
    }
}
