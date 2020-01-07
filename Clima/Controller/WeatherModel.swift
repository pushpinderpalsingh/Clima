//
//  WeatherModel.swift
//  Clima
//
//  Created by Pushpinder Pal Singh on 23/12/19.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId : Int
    let cityName : String
    let temperature : Double
   
    var tempString : String{
        return String(format: "%.1f", temperature)
    }
    var conditionName : String {
        switch conditionId {
             case 200...232:
                 return "cloud.bolt"
             case 300...321:
                 return "cloud.drizzle"
             case 500...531:
                        return "cloud.rain"
             case 600...622:
                        return "cloud.snow"
             case 800:
                         return "sun.max"
             case 801...804:
                       return "cloud.bolt"
             case 700...781:
                         return "cloud.fog"
             default:
                return "cloud"
             }
    }
}
