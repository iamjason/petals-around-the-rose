//
//  main.swift
//  Petals Around the Rose
//
//  Created by Jason Garrett on 12/29/15.
//  Copyright © 2015 Ulnar Nerve. All rights reserved.
//

import Foundation

print("Petals Around the Rose இڿڰۣ-ڰۣ—")
// grab the arguments and make sure they are 
// all positive integers that make sense for a die (1-6)
let values = Process.arguments.dropFirst().flatMap { (string) -> [Int] in
    if let validInt = Int(string) where validInt >= 1 && validInt <= 6 {
        return [validInt]
    }
    print("\nPlease valid die roll (1-6).\n\nThe problematic parameter is: '\(string)'\n")
    exit(-1)
}

print("\nCalculating: \(values)\n")
var solution = values
    .filter { (number) in (number - 1) % 2 == 0 }
    .reduce(0) { (total, number) in total + (number - 1) }

print("The solution is \(solution).\n\n")
exit(1)