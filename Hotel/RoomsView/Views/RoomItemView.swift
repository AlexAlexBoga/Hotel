//
//  RoomItemView.swift
//  Hotel
//
//  Created by Александр Богачев on 1.10.24.
//

import SwiftUI

struct RoomItemView: View {
    
    var item: Rooms
    
    var body: some View {
        VStack(alignment: .leading, spacing: 13) {
            Image(item.image)
                .resizable()
                .frame(height: 185)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack(alignment: .leading, spacing: 15) {
                VStack(alignment: .leading, spacing: 13) {
                    Text(item.name)
                        .font(.system(size: 22, weight: .black))
                    Text("\(item.price, specifier:  "%.2f") EUR")
                        .font(.system(size: 22, weight: .black))
                    Text("test")
                        .font(.system(size: 13))
                        .foregroundStyle(.gray)
                }
                
                HStack(spacing: 4) {
                    ForEach(item.options) { option in
                        RoomItemOption(optin: option)
                    }
                  
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 18)
            
        }
        .padding(.bottom, 26)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .background(Color(.white))
    }
}
