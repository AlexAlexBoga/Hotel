//
//  IconTextRest.swift
//  Hotel
//
//  Created by Александр Богачев on 4.10.24.
//

import SwiftUI

struct IconTextRest: View {
    
    var iconName: String
    var label: String
    
    var body: some View {
        HStack {
            Image(iconName)
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.gray)
                .padding(.trailing, 10)
            
            Text(label)
                .font(.body)
                .foregroundColor(.primary)
            
            Spacer()
        }
        .padding(.vertical, 5)
    }
}
