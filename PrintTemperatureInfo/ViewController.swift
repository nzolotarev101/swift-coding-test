//
//  ViewController.swift
//  PrintTemperatureInfo
//
//  Created by anon on 2018-09-06.
//  Copyright © 2018 anon. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var locationService = ServiceFactory().getLocationWeatherDataService()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func computeTemperatures(_ sender: Any) {
        
        let tempInMadrid = locationService.getWeatherData(locationId: locationService.getLocationId(locationName: "Madrid"))
        let tempInToronto = locationService.getWeatherData(locationId: locationService.getLocationId(locationName: "Toronto"))
        let tempInSaoPaulo = locationService.getWeatherData(locationId: locationService.getLocationId(locationName: "Sao Paulo"))
        
        var a = MaxAndMinTemperatures().getMaxTemperature(temperatures: tempInMadrid)
        var b = MaxAndMinTemperatures().getMinTemperature(temperatures: tempInMadrid)
        var c = AverageTemperature().getTemperture(ts: tempInMadrid)
        var message = "Madrid avg: \(c) max: \(a) min: \(b)"
        madridLabel.stringValue = message
        
        a = MaxAndMinTemperatures().getMaxTemperature(temperatures: tempInToronto)
        b = MaxAndMinTemperatures().getMinTemperature(temperatures: tempInToronto)
        c = AverageTemperature().getTemperture(ts: tempInToronto)
        torontoLabel.stringValue = "Toronto avg: \(c) max: \(a) min: \(b)"
        
        a = MaxAndMinTemperatures().getMaxTemperature(temperatures: tempInSaoPaulo)
        b = MaxAndMinTemperatures().getMinTemperature(temperatures: tempInSaoPaulo)
        c = AverageTemperature().getTemperture(ts: tempInSaoPaulo)
        message = "Sao Paulo avg: \(c) max: \(a) min: \(b)"
        
        saupauloLabel.stringValue = message
        
    }
    
    @IBOutlet weak var torontoLabel: NSTextField!
    
    @IBOutlet weak var madridLabel: NSTextField!
    
    @IBOutlet weak var saupauloLabel: NSTextField!
}

