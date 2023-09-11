//
//  simpleCalculatorTests.swift
//  simpleCalculatorTests
//
//  Created by Aybatu KERKUKLUOGLU on 10/09/2023.
//

import XCTest
@testable import simpleCalculator

final class simpleCalculatorTests: XCTestCase {
    var calculator: CalculatorLogic!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        calculator = CalculatorLogic()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAddition() {
        calculator.setNumber(5)
        let _ = calculator.calculate(symbol: "+")
        calculator.setNumber(10)
        let result = calculator.calculate(symbol: "=")
        
        XCTAssertEqual(result, 15, "Addition test failed")
    }
    
    func testSubtraction() {
        calculator.setNumber(10)
        let _ = calculator.calculate(symbol: "-")
        calculator.setNumber(12)
        let result = calculator.calculate(symbol: "=")
        XCTAssertEqual(result, -2, "Subtraction test failed")
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
