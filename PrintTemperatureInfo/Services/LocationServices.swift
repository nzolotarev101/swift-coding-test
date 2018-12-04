//
//  LocationServices.swift
//  PrintTemperatureInfo
//
//  Created by anon on 2018-10-14.
//  Copyright © 2018 anon. All rights reserved.
//

import Foundation

protocol LocationWeatherDataService {
    
    /// Get the unique id of the location based on its name
    func getLocationId(locationName: String) -> Int
    
    /// Obtain weather data for the given location
    func getWeatherData(locationId: Int) -> [Int8]
    
}

class TestLocationWeatherDataService: LocationWeatherDataService {
    
    var locationIdsMap: [String: Int]
    
    
    
    func getLocationId(locationName: String) -> Int {
        return locationIdsMap[locationName]!
    }
    
    func getWeatherData(locationId: Int) -> [Int8] {
        
        switch locationId {
        case 1:
            return [33, 37, 37, 37, 36, 34, 30]
        case 2:
            return [23, 26, 22, 23, 26, 26, 26]
        case 3:
            return [21, 23, 24, 18, 16, 14, 12]
        default:
            return []
        }
        
    }
    
    init() {
        locationIdsMap = [:]
        locationIdsMap["Madrid"] = 1
        locationIdsMap["Sao Paulo"] = 3
        locationIdsMap["Toronno"] = 2
    }
    
    
}
