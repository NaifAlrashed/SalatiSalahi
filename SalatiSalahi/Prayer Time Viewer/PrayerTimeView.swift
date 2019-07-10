//
//  PrayerTimeView.swift
//  SalatiSalahi
//
//  Created by Naif Alrashed on 10/07/2019.
//  Copyright © 2019 Naif Alrashed. All rights reserved.
//

import SwiftUI

struct PrayerTimeView: View {
    let prayerTime: String
    let prayer: Prayer
    @EnvironmentObject var prayerTimesStore: PrayerNotificationSettingStore
    
    var body: some View {
        HStack {
            Text("Prayer Time")
            Spacer()
            Text(prayerTime)
            Button(action: toggleNotification) {
                prayerTimesStore.notficationStatus(for: prayer)
                    ? Image(systemName: "volume.slash.fill")
                    : Image(systemName: "volume.fill")
                
            }.clipShape(Circle())
        }
    }
    
    private func toggleNotification() {
        withAnimation { prayerTimesStore.toggleNotification(for: prayer) }
    }
}

#if DEBUG
struct PrayerTimeView_Previews : PreviewProvider {
    static var previews: some View {
        PrayerTimeView(prayerTime: "fajir", prayer: .fajir)
            .environmentObject(PrayerNotificationSettingStore())
    }
}
#endif
