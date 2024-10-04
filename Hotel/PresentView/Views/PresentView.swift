//
//  PresentView.swift
//  Hotel
//
//  Created by Александр Богачев on 4.10.24.
//

import SwiftUI

struct PresentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image(.cgLogo)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(maxHeight: .infinity)
                    .padding()
                                
                NavigationLink(destination: MainHotelView()) {
                    Text("Read more")
                        .font(.headline)
                        .frame(width: 300)
                        .padding(.vertical)
                        .background(.backgroundBrown)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.bottom, 40)
                }
            }
        }
    }
}

#Preview {
    PresentView()
}
