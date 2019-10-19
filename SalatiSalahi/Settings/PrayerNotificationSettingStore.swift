//
//  PrayerNotificationSetting.swift
//  Test
//
//  Created by Naif Alrashed on 03/11/1440 AH.
//  Copyright © 1440 Naif Alrashed. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

final class PrayerNotificationSettingStore: ObservableObject {
    
    private enum Keys {
        static let isFajirNotificationEnabled = "isFajirNotificationEnabled"
        static let isSunriseNotificationEnabled = "isSunriseNotificationEnabled"
        static let isDuhrNotificationEnabled = "isDuhrNotificationEnabled"
        static let isAsrNotificationEnabled = "isAsrNotificationEnabled"
        static let isMaghribNotificationEnabled = "isMaghribNotificationEnabled"
        static let isIshaNotificationEnabled = "isIshaNotificationEnabled"
    }
    
    private let cancellable: Cancellable
    private let defaults: UserDefaults
    
    let didChange = PassthroughSubject<(), Never>()
    
    init(defaults: UserDefaults = .standard) {
        cancellable = NotificationCenter.default
            .publisher(for: UserDefaults.didChangeNotification)
            .map { _ in () }
            .subscribe(didChange)
        self.defaults = defaults
    }
    
//    @Defaults(key: Keys.isFajirNotificationEnabled) var isFajirNotificationEnabled: Bool
    
    var isFajirNotificationEnabled: Bool {
        set { defaults.set(newValue, forKey: Keys.isFajirNotificationEnabled) }
        get { defaults.bool(forKey: Keys.isFajirNotificationEnabled) }
    }
    
    var isSunriseNotificationEnabled: Bool {
        set { defaults.set(newValue, forKey: Keys.isSunriseNotificationEnabled) }
        get { defaults.bool(forKey: Keys.isSunriseNotificationEnabled) }
    }
    
    var isDuhrNotificationEnabled: Bool {
        set { defaults.set(newValue, forKey: Keys.isDuhrNotificationEnabled) }
        get { defaults.bool(forKey: Keys.isDuhrNotificationEnabled) }
    }
    
    var isAsrNotificationEnabled: Bool {
        set { defaults.set(newValue, forKey: Keys.isAsrNotificationEnabled) }
        get { defaults.bool(forKey: Keys.isAsrNotificationEnabled) }
    }
    
    var isMaghribNotificationEnabled: Bool {
        set { defaults.set(newValue, forKey: Keys.isMaghribNotificationEnabled) }
        get { defaults.bool(forKey: Keys.isMaghribNotificationEnabled) }
    }
    
    var isIshaNotificationEnabled: Bool {
        set { defaults.set(newValue, forKey: Keys.isIshaNotificationEnabled) }
        get { defaults.bool(forKey: Keys.isIshaNotificationEnabled) }
    }
    
    func toggleNotification(for prayer: Prayer) {
        switch prayer {
        case .fajir:
            isFajirNotificationEnabled.toggle()
        case .sunrise:
            isSunriseNotificationEnabled.toggle()
        case .duhr:
            isDuhrNotificationEnabled.toggle()
        case .asr:
            isAsrNotificationEnabled.toggle()
        case .maghrib:
            isMaghribNotificationEnabled.toggle()
        case .isha:
            isIshaNotificationEnabled.toggle()
        }
    }
    
    func notficationStatus(for prayer: Prayer) -> Bool {
        switch prayer {
        case .fajir:
            return isFajirNotificationEnabled
        case .sunrise:
            return isSunriseNotificationEnabled
        case .duhr:
            return isDuhrNotificationEnabled
        case .asr:
            return isAsrNotificationEnabled
        case .maghrib:
            return isMaghribNotificationEnabled
        case .isha:
            return isIshaNotificationEnabled
        }
    }
}
