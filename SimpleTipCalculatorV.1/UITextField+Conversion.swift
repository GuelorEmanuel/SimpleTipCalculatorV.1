//
// An extension class used for conversion and formating
//  UITextField+Conversion.swift
//  SimpleTipCalculatorV.1
//
//  Created by Guelor Emanuel on 2015-02-12.
//  Copyright (c) 2015 Guelor Emanuel. All rights reserved.
//


import UIKit

extension String {
    var floatValue: Float {
        return (self as NSString).floatValue
    }
    
}

extension Float {
    
    var answerFormat:NSString {
        return (NSString(format: "%0.2f",self as Float))
    }
    
}
