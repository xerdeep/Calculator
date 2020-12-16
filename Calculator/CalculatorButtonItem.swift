//
//  CalculatorButtonItem.swift
//  Calculator
//
//  Created by 潮伟钦 on 2020/12/13.
//

import SwiftUI

enum CalculatorButtonItem {
    enum Operation: String {
        case plus = "+"
        case minus = "-"
        case multiply = "×"
        case divide = "÷"
    }
    
    enum Command: String {
        case clear = "C"
        case percent = "%"
        case undo = "BACK"
    }
    
    case operation(Operation)
    case command(Command)
    case digit(Int)
    case dot
    case equal
}

extension CalculatorButtonItem {
    var text: String {
        switch self {
        case .digit(let value):
            return String(value)
        case .dot:
            return "."
        case .operation(let op):
            return op.rawValue
        case .command(let cmd):
            return cmd.rawValue
        case .equal:
            return "="
        }
    }
    
    var size: CGSize {
        CGSize(width: 50, height: 50)
    }
    
    var bgColorName: String {
        switch self {
        case .digit, .dot:
            return "digitBg"
        case .operation:
            return "operationBg"
        case .command:
            return "commandBg"
        case .equal:
            return "commandBg"
        }
    }
}

extension CalculatorButtonItem: Hashable {}
