//
//  MaxAndMinTemperatures.swift
//  PrintTemperatureInfo
//
//  Created by anon on 2018-09-06.
//  Copyright © 2018 anon. All rights reserved.
//

import Foundation

class MaxAndMinTemperatures {
    
    func getMaxTemperature(temperatures: [Int8]) -> Int8 {
        var r: Int8 = 0
        for t in temperatures{
            if(t > r){
                r = t
            }
        }
        
        return r
    }
    
    func getMinTemperature(temperatures: [Int8]) -> Int8 {
        var r: Int8 = 0
        for t in temperatures{
            if(t < r){
                r = t
            }
        }
        
        return r
    }
    
    
}
