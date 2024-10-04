//
//  RestaurantView.swift
//  Hotel
//
//  Created by Александр Богачев on 2.10.24.
//

import SwiftUI

struct RestaurantView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    Image(.rest2)
                        .resizable()
                        .frame(height: 250)
                        .scaledToFit()
                        .clipped()
                        .overlay(
                            Text("RESTAURANT")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .bold()
                                .padding(.horizontal)
                                .padding(.top, 190),
                            alignment: .leading
                        )
                }
                
                Text("Breakfast menu:")
                    .font(.system(size: 30, weight: .black))
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                IconTextRowRest()
                
                Divider()
                
                    .frame(height: 2)
                    .background(.gray)
                    .padding()
                
                VStack {
                    Text("„Buffet” breakfast in the restaurant of the City Gate hotel:")
                        .font(.system(size: 20, weight: .medium))
                        .padding()
                    
                    Image("pusryciai")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    
                    Text("Monday – Friday 7am – 10am\nSaturday – Sunday 8am – 11am\nBreakfast is included in the price")
                        .font(.system(size: 16, weight: .bold))
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}
#Preview {
    RestaurantView()
}
