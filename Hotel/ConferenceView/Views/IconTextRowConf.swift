//
//  IconTextRowConf.swift
//  Hotel
//
//  Created by Александр Богачев on 2.10.24.
//


import SwiftUI

struct IconTextRowConf: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            IconTextConf(iconName: "kvadratura", label: "30")
            IconTextConf(iconName: "class", label: "Classroom (22)")
            IconTextConf(iconName: "theatre", label: "Theatre (25)")
            IconTextConf(iconName: "rounded", label: "Board Room (12)")
            IconTextConf(iconName: "pay", label: "Conference rental options: full day / half day")
        }
        .padding(.top)
        .padding()
    }
}
