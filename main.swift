//
//  main.swift
//  SwiftFoundation
//
//  Created by Zenny Chen on 2017/2/7.
//

import Foundation


func foo<T: ArithmeticOperations & Comparable>(a: T, b: inout T) -> T {
    
    if a > b {
        return a - b
    }
    else {
        b -= a
        return b
    }
}

func foo<T: SignedArithmeticOperations & Comparable>(_ a: T) -> T {
    return a >= T() ? a : -a
}

var a: Int16 = 10
a = foo(a: 8, b: &a)
print("a = \(a)")

a = -10
a = foo(a)
print("abs(a) = \(a)")

var f: Float = -0.5
f = foo(a: 1.5, b: &f)
print("f = \(f)")

f = -2.5
f = foo(f)
print("abs(f) = \(f)")

