//
//  Global.swift
//  EyreFree
//
//  Created by EyreFree on 2017/8/24.
//
//  Copyright (c) 2017 EyreFree <eyrefree@eyrefree.org>
//
//  Everyone is permitted to copy and distribute verbatim or modified
//  copies of this license document, and changing it is allowed as long
//  as the name is changed.
//
//             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
//    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
//
//   0. You just DO WHAT THE FUCK YOU WANT TO.

import Foundation

// http://swifter.tips/log/
public func printLog<T>(
    _ message: T,
    file: String = #file,
    method: String = #function,
    line: Int = #line) {
    #if DEBUG
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
}
