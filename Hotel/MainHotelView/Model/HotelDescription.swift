//
//  HotelDescription.swift
//  Hotel
//
//  Created by Александр Богачев on 2.10.24.
//

import Foundation

struct HotelDescription: Identifiable {
    let id = UUID()
    let headLine: String
    let description: String
    
    
    static func mockData() -> HotelDescription {
        return HotelDescription(headLine: "GREAT LOCATION, AMIABLE SERVICE AND ALWAYS A GOOD PRICE",
                                description: "City Gate hotel was newly renovated in 2017. At present, our hotel offers 53 comfortable up-to-date rooms, 3 conference halls, authentic restaurant, a stylish comfortable internal courtyard and free parking area")
    }
}
