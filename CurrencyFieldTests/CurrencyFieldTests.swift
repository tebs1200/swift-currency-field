//
//  CurrencyFieldTests.swift
//  CurrencyFieldTests
//
//  Created by Aaren Tebbutt on 20/5/17.
//  Copyright © 2017 Noshjournal. All rights reserved.
//

import XCTest
@testable import CurrencyField

class CurrencyFieldTests: XCTestCase {
    
    func testDefaultsToDecimalKeyboard() {
        let currencyField = CurrencyField()
        XCTAssertEqual(currencyField.keyboardType, UIKeyboardType.decimalPad)
    }
    
    func testSettingValueUpdatesText() {
        let currencyField = CurrencyField()
        currencyField.value = 10
        XCTAssertEqual(currencyField.text, "$10.00")
    }
    
}
