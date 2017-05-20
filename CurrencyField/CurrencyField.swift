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
    
    fileprivate lazy var currencyFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        return numberFormatter
    }()
    
    
    
    // MARK: Initialisers
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        keyboardType = .decimalPad
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        keyboardType = .decimalPad
    }
    
    
    
    // MARK: Helper Functions
    
    private func setTextToCurrencyString(for value: Decimal?) {
        if let value = value {
            self.text = NumberFormatter.localizedString(from: NSDecimalNumber(decimal: value), number: .currency)
        } else {
            self.text = nil
        }
    }
    
}
