//
//  CurrencyField.swift
//  CurrencyField
//
//  Created by Aaren Tebbutt on 20/5/17.
//  Copyright © 2017 Noshjournal. All rights reserved.
//

import UIKit

public class CurrencyField: UITextField {
    
    public var value: Decimal?
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        keyboardType = .decimalPad
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        keyboardType = .decimalPad
    }
    
}
