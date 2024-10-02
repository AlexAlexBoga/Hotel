//
//  ConferenceServices.swift
//  Hotel
//
//  Created by Александр Богачев on 2.10.24.
//

import Foundation

struct ConferenceServices: Identifiable {
    let id = UUID()
    let services: [String]

    static func mockData() -> ConferenceServices {
        ConferenceServices(
            services: [
                "Natural lightening",
                "Unlimited free Wi-Fi",
                "Flipchart/Board",
                "Suspended screen",
                "Sound system with wired microphone (reservation is needed)",
                "1st floor",
                "Technical service",
                "Printing and copying services",
                "Catering services: Business breakfast/ lunch/ dinner, coffee break"
            ]
        )
    }
}
