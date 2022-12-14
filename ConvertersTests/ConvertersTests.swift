//
//  ConvertersTests.swift
//  ConvertersTests
//
//  Created by Надежда on 2022-08-03.
//

import XCTest

class ConvertersTests: XCTestCase {
        
    private var sut: Converters!
    
    override func setUpWithError() throws {
        sut = Converters()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    // A simple conversion with a positive number
    func test_convert10_returns1080() {

        let actual = sut.convertEuroToUSD(euro: "10")
        let expected = "$10.80"
        
        XCTAssertEqual(actual, expected)
    }

    // Negative numbers return an error message
    func test_convertNeg10_returnsErrorMessage() {
        let actual = sut.convertEuroToUSD(euro: "-10")
        let expected = "Please enter a positive number"
        
        XCTAssertEqual(actual, expected)
    }
    
    // Entering an invalid input returns and error message
    func test_invalidInput_returnsErrorMessage() {
        let actual = sut.convertEuroToUSD(euro: "Hello")
        let expected = "Please enter a positive number"
        
        XCTAssertEqual(actual, expected)
    }
    
    //Entering an empty input returns an error message
    func test_convertEmptyString_returnsErrorMessage() {
        let actual = sut.convertEuroToUSD(euro: "Hello")
        let expected = "Please enter a positive number"
        
        XCTAssertEqual(actual, expected)
    }
    
    // Converting a decimal returns a decimal
    func test_convertDecimal1050_returns() {
        let actual = sut.convertEuroToUSD(euro: "10.50")
        let expected = "$11.34"
        
        XCTAssertEqual(actual, expected)
    }
    
    // Converting a high number returns an error message
    func test_convertMillion_returnsTooBigErrorMessage() {
        let actual = sut.convertEuroToUSD(euro: "1000000")
        let expected = "Value too big to convert!"
        
        XCTAssertEqual(actual, expected)
    }
    
    // MARK: Are all tests written?
    // Product -> Scheme -> Edit Scheme -> Test - Options -> Code Coverage - Gatther coverage for - all targets -> run tests -> Show the report navigation -> Coverage
}
