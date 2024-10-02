//
//  HotelDescription.swift
//  Hotel
//
//  Created by Александр Богачев on 2.10.24.
//

import Foundation

struct HotelDescription: Identifiable {
    let id = UUID()
    let headLineHotel: String
    let description: String
    let headLineRomm: String
    let descriptionRoom: String
    let headLineConf: String
    let descriptionConf: String
    let headLineRest: String
    let descriptionRest: String
    
    
    static func mockData() -> HotelDescription {
        return HotelDescription(headLineHotel: "GREAT LOCATION, AMIABLE SERVICE AND ALWAYS A GOOD PRICE",
                                description: "City Gate hotel was newly renovated in 2017. At present, our hotel offers 53 comfortable up-to-date rooms, 3 conference halls, authentic restaurant, a stylish comfortable internal courtyard and free parking area",
                                headLineRomm:"BOOK YOUR ROOM DIRECTLY AND SAVE",
                                descriptionRoom:"Families with children which are up to 2 years old may be offered with a crib. Hotel administrator has to bespeak. Check in/Check out Time : Check-in 14:00 – Check out 12:00",
                                headLineConf: "CONFERENCES",
                                descriptionConf: "An excellent quality of your event will be ensured – everything will be taken care of by our hospitable hotel staff. We provide full service, coffee breaks, business lunches and banquets.For more information please contact us bytelephone +37052107306, e-mail: hotel@citygate.lt",
                                headLineRest: "RESTAURANT",
                                descriptionRest: "Start your day at the stylish and cozy City Gate restaurant with buffet breakfast."
                                
        )
    }
}
