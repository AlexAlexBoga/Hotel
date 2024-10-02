//
//  IconTextRowView.swift
//  Hotel
//
//  Created by Александр Богачев on 2.10.24.
//

import SwiftUI

struct IconTextRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 5) {
            IconWithText(iconName: "location1", label: "PRIME LOCATION")
            IconWithText(iconName: "wifi1", label: "FREE WI-FI")
            IconWithText(iconName: "parking1", label: "FREE PARKING")
            IconWithText(iconName: "stars1", label: "AWARD WINNING HOTEL")
        }
        .padding(.top)
        .padding()
    }
}
