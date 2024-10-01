//
//  MainHotelViewModel.swift
//  Hotel
//
//  Created by Александр Богачев on 2.10.24.
//

import Foundation

class MainHotelViewModel: ObservableObject {
    @Published var hotelsDescription: HotelDescription = HotelDescription.mockData()
}
