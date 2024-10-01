//
//  RoomDetailsImage.swift
//  Hotel
//
//  Created by Александр Богачев on 1.10.24.
//

import SwiftUI

struct RoomDetailsImage: View {
    
    let image: String
    
    var body: some View {
        
        Image(image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}
