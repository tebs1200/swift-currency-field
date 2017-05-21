[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
# swift-currency-field
A subclass of UITextField for currency input. Written in Swift.

Features:

 - Exposes a `value` property (of type `Decimal?`) that reflects the current text value
 - Updating the `value` will also set the text
 - Validates input so that only changes that result in valid 'currency' or 'decimal' strings are allowed
 - Defaults the keyboard type to `.decimalPad`
 - Formats the text to a localised currency string when the field resigns first responder
