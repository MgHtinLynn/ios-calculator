//
//  Calculator.swift
//  Calculator
//
//  Created by Htin Lynn on 9/10/19.
//  Copyright © 2019 Htin Lynn. All rights reserved.
//

import Foundation

class Calculate {
    var var1: Int = 0
    var var2: Int = 0
    var sign: String = ""
    
    func calculate() -> Int {
        var result: Int = 0
        
        switch sign {
        case "+":
            result = var1 + var2
        case "-":
            result = var1 - var2
        case "*":
            result = var1 * var2
        case "/":
            result = var1 / var2
        default:
            result = 0
        }
        
        var1 = result
        return result
    }
}
