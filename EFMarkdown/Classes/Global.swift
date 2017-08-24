//
//  Global.swift
//  Pods
//
//  Created by EyreFree on 2017/8/24.
//
//

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
