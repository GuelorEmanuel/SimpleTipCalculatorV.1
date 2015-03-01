//
//  SimpleTipCalculatorV_1Tests.swift
//  SimpleTipCalculatorV.1Tests
//
//  Created by Guelor Emanuel on 2015-02-11.
//  Copyright (c) 2015 Emanuel. All rights reserved.
//

import UIKit
import XCTest

class SimpleTipCalculatorV_1Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    /*
     * function to test Calculator class constructor
     */
    func testCalculatorConstructor() {
        // This is an example of a functional test case.
        var calculator = Calculator(tipPercent: 5.0, mealCost: 25.00)
        
        
        XCTAssert( 5.0*0.01 == calculator.getTipPercentage(), "Pass")
        XCTAssert(25.00 == calculator.getMealCost(), "Pass")
        XCTAssert(true, "Pass")
    }
    
    /*
    * function to test Calculator class constructor
    */
    func testCalculatorMethods() {
        // This is an example of a functional test case.
        var calculator = Calculator(tipPercent: 5.0, mealCost: 25.00)
        
        println("This is:\(calculator.calculateTip())")
        XCTAssert( (5.0*0.01)*25.00 == calculator.calculateTip(), "Pass")
        XCTAssert(((5.0*0.01 )*25.00)/2 == calculator.calculateTipPerPerson(2), "Pass")
        XCTAssert((((5.0*0.01)*25.00) + 25.00)/1 == calculator.calculateTotalCost(1), "Pass")
        XCTAssert((((5.0*0.01)*25.00) + 25.00)/2 == calculator.calculateTotalCost(2), "Pass")    }
    
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
