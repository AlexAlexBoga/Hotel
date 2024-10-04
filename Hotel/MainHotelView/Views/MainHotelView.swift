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
                
                DescriptionSectionView(headLine: hotel.hotelsDescription.headLineHotel,
                                       description: hotel.hotelsDescription.description,
                                       destination: AnyView(HotelInfoView())
                )
                
                IconTextRowView()
                    .padding()
                
                VStack(spacing: 0) {
                    Image(.room5)
                        .resizable()
                        .frame(height: 250)
                        .scaledToFit()
                        .clipped()
                }
                
                DescriptionSectionView(headLine: hotel.hotelsDescription.headLineRomm,
                                       description: hotel.hotelsDescription.descriptionRoom,
                                       destination: AnyView(MainRoomsView())
                )
                
                VStack(spacing: 0) {
                    Image(.konf3)
                        .resizable()
                        .frame(height: 250)
                        .scaledToFit()
                        .clipped()
                }
                .padding(.top, 30)
                
                DescriptionSectionView(headLine: hotel.hotelsDescription.headLineConf,
                                       description: hotel.hotelsDescription.descriptionConf,
                                       destination: AnyView(ConferenceView())
                )
                
                VStack(spacing: 0) {
                    Image(.rest1)
                        .resizable()
                        .frame(height: 250)
                        .scaledToFit()
                        .clipped()
                }
                .padding(.top, 30)
                
                DescriptionSectionView(headLine: hotel.hotelsDescription.headLineRest,
                                       description: hotel.hotelsDescription.descriptionRest,
                                       destination: AnyView(RestaurantView())
                )
                
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

#Preview {
    MainHotelView()
}


