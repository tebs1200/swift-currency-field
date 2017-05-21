[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
# CurrencyField
A subclass of UITextField for currency input. Written in Swift.

## Features

 - Exposes a `value` property (of type `Decimal?`) that reflects the current text value
 - Updating `value` will also set the text
 - Validates input so that only changes that result in valid 'currency' or 'decimal' strings are allowed
 - Defaults the keyboard type to `.decimalPad`
 - Formats the text to a localised currency string when the field resigns first responder
 
## Installation

### Carthage
 
[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.
 
You can install Carthage via [Homebrew](https://brew.sh):
 
    $ brew update
    $ brew install carthage
 
To integrate CurrencyField into your Xcode project using Carthage, specify it in your Cartfile:
 
    github "tebs1200/swift-currency-field" ~> 0.8

Run `carthage update` to build the framework and drag the built CurrencyField.framework into your Xcode project.
