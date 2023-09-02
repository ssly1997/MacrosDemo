//
//  main.swift
//  MacrosDemo
//
//  Created by 李方长 on 2023/9/2.
//

import Foundation

print("Hello, World!")

@freestanding(expression)
public macro lfcStringify<T>(_ value: T) -> (T, String) = #externalMacro(module: "LFCMacroMacros", type: "StringifyMacro")

let a = 17
let b = 25

let (result, code) = #lfcStringify(a + b)

print("The value \(result) was produced by the code \"\(code)\"")
