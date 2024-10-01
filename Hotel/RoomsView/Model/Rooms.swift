//
//  Rooms.swift
//  Hotel
//
//  Created by Александр Богачев on 1.10.24.
//

import Foundation

struct Rooms: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let price: Double
    let description: String
    let isAvaliable: Bool
    let options: [RoomOption]
    let descriptionImage: [String]
    
    
    static func mockData() -> [Rooms] {
        [
            Rooms(image: "room1", name: "STANDARD SINGLE", price: 65, description: "description room 1", isAvaliable: true, options: [
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
            ],
                  descriptionImage: ["room1", "room2", "room3", "room4"]),
            
            Rooms(image: "room2", name: "STANDARD DOUBLE", price: 70, description: "description room 2", isAvaliable: true, options: [
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
            ],
                  descriptionImage: ["room2", "room3", "room4", "room5"]),
            
            Rooms(image: "room3", name: "SUPERIOR DOUBLE", price: 75, description: "description room 3", isAvaliable: true, options: [
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
            ],
                  descriptionImage: ["room3", "room3", "room3", "room3"]),
            
            Rooms(image: "room4", name: "STANDARD TRIPLE", price: 85, description: "description room 4", isAvaliable: true, options: [
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
            ],
                  descriptionImage: ["room4", "room4", "room4", "room4"]),
            
            Rooms(image: "room5", name: "DELUXE ROOM", price: 95, description: "description room 5", isAvaliable: true, options: [
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
                RoomOption(optinName: "Breakfest", optionValue: "NO Breakfest"),
            ],
                  descriptionImage: ["room5", "room5", "room5", "room5"]),
        ]
    }
}

