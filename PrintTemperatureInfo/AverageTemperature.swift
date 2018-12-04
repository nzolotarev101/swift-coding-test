//
//  AverageTemperature.swift
//  PrintTemperatureInfo
//
//  Created by anon on 2018-09-06.
//  Copyright © 2018 anon. All rights reserved.
//

import Foundation

class AverageTemperature {
    func getTemperture(ts: [Int8]) -> Double{
        var tsum: Int8 = 0
        
        for i in 1...ts.count-1{
            tsum += ts[i-1]
        }
        
        return Double(tsum) / Double(ts.count)
    }
}
