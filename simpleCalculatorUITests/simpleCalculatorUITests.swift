//
//  simpleCalculatorUITests.swift
//  simpleCalculatorUITests
//
//  Created by Aybatu KERKUKLUOGLU on 09/09/2023.
//

import XCTest

final class simpleCalculatorUITests: XCTestCase {
    private let app = XCUIApplication()
    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
    }
    
    override func tearDownWithError() throws {
        // Put any teardown code here.
        super.tearDown()
    }
    
    func testLaunch() throws {
        app.launch()
        // Add relevant test assertions here if needed.
    }
    
    
    func testCalculator() throws {
        app.launch()
        let calculatorButton = app.buttons["CalculatorButton"]
        XCTAssertTrue(calculatorButton.waitForExistence(timeout: 5))
        calculatorButton.tap()
        let resultLabel = app.staticTexts["ResultLabel"]
        XCTAssertTrue(resultLabel.waitForExistence(timeout: 2))
        
        let zeroButton = app.buttons["0"]
        let oneButton = app.buttons["1"]
        let twoButton = app.buttons["2"]
        let threeButton = app.buttons["3"]
        let fourButton = app.buttons["4"]
        let fiveButton = app.buttons["5"]
        let sixButton = app.buttons["6"]
        let sevenButton = app.buttons["7"]
        let eightButton = app.buttons["8"]
        let nineButton = app.buttons["9"]
        let decimalButton = app.buttons["."]
        let clearButton = app.buttons["AC"]
        let minusButton = app.buttons["-"]
        let plusButton = app.buttons["+"]
        let divideButton = app.buttons["÷"]
        let equalButton = app.buttons["="]
        let percentageButton = app.buttons["%"]
        let multipyButton = app.buttons["x"]
        let minusOrPositiveButton = app.buttons["+/-"]
        
        XCTAssertTrue(zeroButton.exists)
        XCTAssertTrue(oneButton.exists)
        XCTAssertTrue(twoButton.exists)
        XCTAssertTrue(threeButton.exists)
        XCTAssertTrue(fourButton.exists)
        XCTAssertTrue(fiveButton.exists)
        XCTAssertTrue(sixButton.exists)
        XCTAssertTrue(sevenButton.exists)
        XCTAssertTrue(eightButton.exists)
        XCTAssertTrue(nineButton.exists)
        XCTAssertTrue(decimalButton.exists)
        XCTAssertTrue(clearButton.exists)
        XCTAssertTrue(minusButton.exists)
        XCTAssertTrue(plusButton.exists)
        XCTAssertTrue(divideButton.exists)
        XCTAssertTrue(equalButton.exists)
        XCTAssertTrue(percentageButton.exists)
        XCTAssertTrue(multipyButton.exists)
        XCTAssertTrue(minusOrPositiveButton.exists)
        
        zeroButton.tap()
        decimalButton.tap()
        oneButton.tap()
        twoButton.tap()
        threeButton.tap()
        fourButton.tap()
        fiveButton.tap()
        sixButton.tap()
        sevenButton.tap()
        eightButton.tap()
        nineButton.tap()
        minusOrPositiveButton.tap()
        
        XCTAssertEqual(resultLabel.label, "-0.123456789")
        
        clearButton.tap()
        XCTAssertEqual(resultLabel.label, "0.0")
        
        nineButton.tap()
        multipyButton.tap()
        threeButton.tap()
        equalButton.tap()
        XCTAssertEqual(resultLabel.label, "27.0")
        divideButton.tap()
        threeButton.tap()
        equalButton.tap()
        XCTAssertEqual(resultLabel.label, "9.0")
        minusButton.tap()
        fourButton.tap()
        equalButton.tap()
        XCTAssertEqual(resultLabel.label, "5.0")
        plusButton.tap()
        nineButton.tap()
        fiveButton.tap()
        equalButton.tap()
        XCTAssertEqual(resultLabel.label, "100.0")
        clearButton.tap()
        XCTAssertEqual(resultLabel.label, "0.0")
        oneButton.tap()
        decimalButton.tap()
        fiveButton.tap()
        multipyButton.tap()
        twoButton.tap()
        zeroButton.tap()
        zeroButton.tap()
        equalButton.tap()
        XCTAssertEqual(resultLabel.label, "300.0")
        percentageButton.tap()
        XCTAssertEqual(resultLabel.label, "3.0")
    }
    
    func testRunUITestsContinuously() {
        let testRepeat = 10
        
        for _ in 1...testRepeat {
            do{
                try testCalculator()
            } catch {
                
            }
        }
        
        
        
        // Wait for a period before the next iteration (e.g., 5 minutes)
        sleep(5)
    }


//
//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
