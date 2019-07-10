//
//  PrayerTimeView.swift
//  SalatiSalahi
//
//  Created by Naif Alrashed on 10/07/2019.
//  Copyright © 2019 Naif Alrashed. All rights reserved.
//

import SwiftUI

struct PrayerTimesView : View {
    
    @EnvironmentObject var prayerTimesViewModel: PrayerTimesViewModel
    
    var body: some View {
        VStack {
            PrayerTimeView(prayerTime: prayerTimesViewModel.fajir, prayer: .fajir)
                .padding()
            PrayerTimeView(prayerTime: prayerTimesViewModel.sunrise, prayer: .sunrise)
                .padding()
            PrayerTimeView(prayerTime: prayerTimesViewModel.duhr, prayer: .duhr)
                .padding()
            PrayerTimeView(prayerTime: prayerTimesViewModel.asr, prayer: .asr)
                .padding()
            PrayerTimeView(prayerTime: prayerTimesViewModel.maghrib, prayer: .maghrib)
                .padding()
            PrayerTimeView(prayerTime: prayerTimesViewModel.isha, prayer: .isha)
                .padding()
        }
    }
}

#if DEBUG
struct PrayerTimesView_Previews : PreviewProvider {
    static var previews: some View {
        PrayerTimesView().environmentObject(PrayerTimesViewModel())
    }
}
#endif
