//
//  ServiceFactory.swift
//  PrintTemperatureInfo
//
//  Created by anon on 2018-10-14.
//  Copyright © 2018 anon. All rights reserved.
//

import Foundation

class ServiceFactory {
    
    func getLocationWeatherDataService() -> LocationWeatherDataService {
        return TestLocationWeatherDataService()
    }
    
}
