//
//  MainHotelView.swift
//  Hotel
//
//  Created by Александр Богачев on 1.10.24.
//

import SwiftUI

struct MainHotelView: View {
    @StateObject var hotel = MainHotelViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    Image(.image11)
                        .resizable()
                        .frame(height: 250)
                        .scaledToFit()
                        .clipped()
                }
                .frame(maxWidth: .infinity)
                
                VStack {
                    Text(hotel.hotelsDescription.headLine)
                        .foregroundStyle(.backgroundBrown)
                        .font(.system(size: 18, weight: .bold))
                        .padding()
                        .multilineTextAlignment(.center)
                        .padding(.top, 0)
                    
                    Text(hotel.hotelsDescription.description)
                        .font(.system(size: 18, weight: .medium))
                        .multilineTextAlignment(.center)
                        .padding(.top, 0)
                    
                    NavigationLink(destination: HotelInfoView()) {
                        Text("Read more")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.backgroundBrown)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .frame(width: 300)
                    .padding(.bottom, 0)
                }
                
                IconTextRowView()
                    .padding()
            }
            .edgesIgnoringSafeArea(.top)
        }
       
    }
}

#Preview {
    MainHotelView()
}


