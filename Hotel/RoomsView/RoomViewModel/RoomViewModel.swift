//
//  RoomViewModel.swift
//  Hotel
//
//  Created by Александр Богачев on 1.10.24.
//

import Foundation

class RoomViewModel: ObservableObject {
    @Published var roomItem: [Rooms] = Rooms.mockData()
}
