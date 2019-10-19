//
//  PrayerTimeViewModel.swift
//  SalatiSalahi
//
//  Created by Naif Alrashed on 10/07/2019.
//  Copyright © 2019 Naif Alrashed. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class PrayerTimesViewModel: ObservableObject {
    
    var objectWillChange: ObservableObjectPublisher = ObservableObjectPublisher()
    
    private let prayerTime = PrayerTime()
    
    private var timer: Timer?
    
    init() {
        startTimer()
    }
    
    private func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.objectWillChange.send()
        }
    }
    
    let dateComponentFormatter: DateComponentsFormatter = {
        let dateComponentFormatter = DateComponentsFormatter()
        dateComponentFormatter.allowedUnits = [.hour, .minute, .second]
        return dateComponentFormatter
    }()
    
    var fajir: String {
        return dateComponentFormatter.string(from: prayerTime.fajir, to: .init())!
    }
    
    var sunrise: String {
        return dateComponentFormatter.string(from: prayerTime.sunrise, to: .init())!
    }
    
    var duhr: String {
        return dateComponentFormatter.string(from: prayerTime.duhr, to: .init())!
    }
    
    var asr: String {
        return dateComponentFormatter.string(from: prayerTime.asr, to: .init())!
    }
    
    var maghrib: String {
        return dateComponentFormatter.string(from: prayerTime.maghrib, to: .init())!
    }
    
    var isha: String {
        return dateComponentFormatter.string(from: prayerTime.isha, to: .init())!
    }
}
