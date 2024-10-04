//
//  HotelInfoViewModel.swift
//  Hotel
//
//  Created by Александр Богачев on 4.10.24.
//

import Foundation

class HotelInfoViewModel: ObservableObject {
    
    @Published var hotelInfo: HotelServices = HotelServices.mockData()
}

