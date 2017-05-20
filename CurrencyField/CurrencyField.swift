//
//  CurrencyField.swift
//  CurrencyField
//
//  Created by Aaren Tebbutt on 20/5/17.
//  Copyright © 2017 Noshjournal. All rights reserved.
//

import UIKit

public class CurrencyField: UITextField {
    
    private var internalValue: Decimal?
    public var value: Decimal? {
        get {
            return internalValue
        }
        set(val) {
            internalValue = val
            setTextToCurrencyString(for: val)
        }
    }
    
    private var lastValidText: String? = nil
    
    fileprivate lazy var currencyFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        return numberFormatter
    }()
    
    
    
    // MARK: Initialisers
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        keyboardType = .decimalPad
        self.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        keyboardType = .decimalPad
        self.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
    }
    
    // Prevent the user from moving the cursor
    override public func closestPosition(to point: CGPoint) -> UITextPosition? {
        let beginning = self.beginningOfDocument
        let end = self.position(from: beginning, offset: (self.text?.characters.count)!)
        return end
    }
    
    func textDidChange() {
        
        if let currentText = self.text, currentText != "" {
            
            if currentText == NSLocale.current.currencySymbol {
                internalValue = nil
                lastValidText = currentText
            } else {
                if let parsedDecimalValue = parseCurrencyString(currentText) {
                    internalValue = parsedDecimalValue
                    lastValidText = currentText
                } else {
                    self.text = lastValidText
                }
            }
        } else {
            internalValue = nil
            lastValidText = nil
        }
    }
    
    
    // MARK: Helper Functions
    
    private func setTextToCurrencyString(for value: Decimal?) {
        if let value = value {
            self.text = NumberFormatter.localizedString(from: NSDecimalNumber(decimal: value), number: .currency)
        } else {
            self.text = nil
        }
    }
    
    private func parseCurrencyString(_ currencyString: String) -> Decimal? {
        
        if let decimal = Decimal(string: currencyString) {
            return decimal
        } else if let number = currencyFormatter.number(from: currencyString) {
            return number.decimalValue
        }
        
        return nil
    }
    
}
