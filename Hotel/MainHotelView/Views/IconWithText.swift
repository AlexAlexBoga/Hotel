//
//  IconWithText.swift
//  Hotel
//
//  Created by Александр Богачев on 2.10.24.
//

import SwiftUI
struct IconWithText: View {
    
    var iconName: String
    var label: String
    
    var body: some View {
        VStack(alignment: .center) {
            Image(iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundStyle(.gray)
            Text(label)
                .font(.caption)
                .foregroundStyle(.backgroundBrown)
                .multilineTextAlignment(.center)
                .frame(height: 50)
        }
        .frame(maxWidth: .infinity)
    }
}
