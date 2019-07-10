//
//  PrayerTime.swift
//  SalatiSalahi
//
//  Created by Naif Alrashed on 10/07/2019.
//  Copyright © 2019 Naif Alrashed. All rights reserved.
//

import Foundation
import Adhan

struct PrayerTime {
    
    private let prayerTimes: PrayerTimes
    
    var fajir: Date { prayerTimes.fajr }
    
    var sunrise: Date { prayerTimes.sunrise }
    
    var duhr: Date { prayerTimes.dhuhr }
    
    var asr: Date { prayerTimes.asr }
    
    var maghrib: Date { prayerTimes.maghrib }
    
    var isha: Date { prayerTimes.isha }
    
    init() {
        let calender = Calendar(identifier: .gregorian)
        let today = calender.dateComponents([.year, .month, .day], from: .init())
        let coordinates = Coordinates(latitude: 35.78056, longitude: -78.6389)
        prayerTimes = PrayerTimes(coordinates: coordinates,
                                  date: today,
                                  calculationParameters: CalculationMethod.ummAlQura.params)!
    }
}
