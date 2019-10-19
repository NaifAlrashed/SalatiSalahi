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
    
    private var prayerTimes: PrayerTimes
    
    var fajir: Date { prayerTimes.fajr }
    
    var sunrise: Date { prayerTimes.sunrise }
    
    var duhr: Date { prayerTimes.dhuhr }
    
    var asr: Date { prayerTimes.asr }
    
    var maghrib: Date { prayerTimes.maghrib }
    
    var isha: Date { prayerTimes.isha }
    
    var currentPrayer: Date { Date() }
    
    init(date: Date = .init(), lat: Double = 24.774265, lon: Double = 46.738586, region: RegionCalculationMethod = .ummAlQura) {
        let calender = Calendar(identifier: .gregorian)
        let day = calender.dateComponents([.year, .month, .day], from: date)
        let coordinates = Coordinates(latitude: lat, longitude: lon)
        prayerTimes = PrayerTimes(coordinates: coordinates,
                                  date: day,
                                  calculationParameters: region.params)!
    }
}
