//
//  WeatherObjects.swift
//  Weather UI
//
//  Created by keenan ray on 9/4/23.
//

import SwiftUI

struct Weather: Identifiable{
    var id = UUID()
    
    var day: String
    var img : String
    var temp: String
    
}

var days = [Weather(day: "TUE", img: "cloud.sun.fill", temp: "80°"),
            Weather(day: "WED", img: "cloud.bolt.rain.fill", temp: "64°"),
            Weather(day: "THU", img: "cloud.sun.fill", temp: "86°"),
            Weather(day: "FRI", img: "smoke.fill", temp: "78°"),
            Weather(day: "SAT", img: "cloud.sun.bolt.fill", temp: "70°"),
]
