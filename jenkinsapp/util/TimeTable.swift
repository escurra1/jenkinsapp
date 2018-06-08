//
//  TimeTable.swift
//  jenkinsapp
//
//  Created by mescurra on 6/8/18.
//  Copyright © 2018 mescurra. All rights reserved.
//

import Foundation

class TimeTable {
    func multiply (_ a: Int, b: Int) -> Int {
        var ans = 0
        
        for _ in 0 ..< a {
            for _ in 0 ..< b {
                ans += 1
            }
        }
        
        return ans
    }
}
