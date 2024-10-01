//
//  BottomButton.swift
//  Hotel
//
//  Created by Александр Богачев on 1.10.24.
//

import SwiftUI

struct BottomButton: View {
    var text: String
    var color: Color
    var foregroundColor: Color
    var body: some View {
        Button {
            //
        } label: {
            Text(text)
                .padding(.vertical,14)
                .frame(maxWidth: .infinity)
                .background(color)
                .foregroundStyle(foregroundColor)
                .clipShape(.rect(cornerRadius: 10))
        }

    }
}
