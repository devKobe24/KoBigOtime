//
// KoBigOtime.swift
// KoBigOtime
//
// Created by Kobe on 11/11/2023
// Copyright (c) 2023 Kobe. All rights reserved.
//

import Foundation

@available(iOS 13.0, *)

public func timeCheck(solutionNumber: Int? = nil, closure: () -> ()) {
    let start = CFAbsoluteTimeGetCurrent()
    closure()
    let processTime = CFAbsoluteTimeGetCurrent() - start
    let numberFormatter = NumberFormatter()
    
    numberFormatter.maximumFractionDigits = 20
    let convertNumber: Double = Double(processTime)
    
    if let resultTime = numberFormatter.string(from: NSNumber(value: convertNumber)) {
        guard let solutionNumber = solutionNumber else {
            print("경과 시간: \(resultTime)")
            return
        }
        print("풀이 \(solutionNumber)번 경과 시간: \(resultTime)")
    } else {
        print("Number formatting failed")
    }
}



