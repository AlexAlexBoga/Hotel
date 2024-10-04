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
    let title: String
    let description: String
    let serviceDescription: String
    let title2: String
    let titleContact: String
    let contactDescription: [String]
    
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
            images: ["image11", "image12", "image13"],
            
            title: "GREAT LOCATION, AMIABLE SERVICE AND ALWAYS GOOD PRICE",
            description: "City Gate hotel was newly renovated in 2017. At present, our hotel offers 53 comfortable up-to-date rooms, 3 conference halls, authentic restaurant, a stylish comfortable internal courtyard and free parking area.",
            serviceDescription: "FEEL THE COMFORT AND COZINESS OF OUR HOTEL. WE ARE AT YOUR SERVICE:",
            title2: "We are looking forward to welcoming you at the City Gate hotel!",
            titleContact: "Contact Information",
            contactDescription: [
                "JSC City Gate, company code 110874198",
                "Bazilijonų str. 3, LT-01304 Vilnius, Lithuania",
                "Phone: (+370) 5 210 7306; (+370) 698 28833",
                "Fax: (+370) 5 210 7307",
                "E-mail: hotel@citygate.lt",
                "Website: www.citygate.lt"
            ]
        )
    }
}
