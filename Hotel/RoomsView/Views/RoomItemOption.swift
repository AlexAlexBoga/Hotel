//
//  RoomItemOption.swift
//  Hotel
//
//  Created by Александр Богачев on 1.10.24.
//

import SwiftUI

struct RoomItemOption: View {
    
    let optin: RoomOption
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(optin.optinName)
                .foregroundStyle(.white)
            Text(optin.optionValue)
                .foregroundStyle(.white)
        }
        .font(.system(size: 12))
        .padding(.vertical, 10)
        .padding(.horizontal, 13)
        .background(.backgroundBrown)
        .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}
