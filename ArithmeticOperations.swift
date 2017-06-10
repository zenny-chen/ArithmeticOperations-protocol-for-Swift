//
//  ArithmeticOperations.swift
//  SwiftFoundation
//
//  Created by Zenny Chen on 2017/6/10.
//

import Foundation


public protocol ArithmeticOperations {
    
    init()
    
    static func +(lhs: Self, rhs: Self) -> Self
    static func -(lhs: Self, rhs: Self) -> Self
    static func *(lhs: Self, rhs: Self) -> Self
    static func /(lhs: Self, rhs: Self) -> Self
    
    static func +=(lhs: inout Self, rhs: Self)
    static func -=(lhs: inout Self, rhs: Self)
    static func *=(lhs: inout Self, rhs: Self)
    static func /=(lhs: inout Self, rhs: Self)
}

public protocol SignedArithmeticOperations: ArithmeticOperations, SignedNumber {
    
}

extension UInt8: ArithmeticOperations {
    
}

extension Int8: SignedArithmeticOperations {
    
}

extension UInt16: ArithmeticOperations {
    
}

extension Int16: SignedArithmeticOperations {
    
}

extension UInt32: ArithmeticOperations {
    
}

extension Int32: SignedArithmeticOperations {

}

extension UInt: ArithmeticOperations {
    
}

extension Int: SignedArithmeticOperations {
    
}

extension UInt64: ArithmeticOperations {
    
}

extension Int64: SignedArithmeticOperations {
    
}

extension Float: SignedArithmeticOperations {
    
}

extension Double: SignedArithmeticOperations {
    
}

extension CGFloat: SignedArithmeticOperations {
    
}

extension Float80: SignedArithmeticOperations {
    
}

