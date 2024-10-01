//
//  HotelServices.swift
//  Hotel
//
//  Created by Александр Богачев on 1.10.24.
//

import Foundation

struct HotelServices: Identifiable {
    let id = UUID()
    let services: [String]
    let images: [String]

    static func mockData() -> HotelServices {
        HotelServices(
            services: [
                "Room service 24/7 hours",
                "Hospitable, foreign-language-speaking staff",
                "Unlimited and free Wi-Fi (in all premises of hotel)",
                "Cable TV",
                "Automatic air conditioning system",
                "Taxi service 24/7",
                "Meeting at the airport, bus and train stations",
                "Ordering tours and attractions",
                "Fax and copy services",
                "Luggage storage service",
                "Charge-free safe deposit box at the reception",
                "Booking for car rental",
                "Laundry and dry cleaning services",
                "Ironing room",
                "Morning wake-up call",
                "Free car parking in the inner hotel yard",
                "Convenient parking for motorcycles and bicycles",
                "Cozy and comfortable private courtyard",
                "Elevator",
                "Several handicapped friendly rooms",
                "Restaurant is an excellent place for private diners, business meetings, banquets, etc.",
                "3 modern conference halls"
            ],
            images: ["image11", "image12", "image13"]
        )
    }
}
