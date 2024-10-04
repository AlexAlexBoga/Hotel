//
//  HotelInfoView.swift
//  Hotel
//
//  Created by Александр Богачев on 1.10.24.
//

import SwiftUI

struct HotelInfoView: View {
    @StateObject var service = HotelInfoViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 10) {
                    Image(.cgLogo)
                        .padding(.leading, 30)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(service.hotelInfo.title)
                        .foregroundStyle(.backgroundBrown)
                        .font(.system(size: 18, weight: .bold))
                        .padding()
                        .multilineTextAlignment(.center)
                    Text(service.hotelInfo.description)
                        .font(.system(size: 18, weight: .medium))
                        .padding()
                        .multilineTextAlignment(.center)
                    Text(service.hotelInfo.serviceDescription)
                        .foregroundStyle(.backgroundBrown)
                        .font(.system(size: 18, weight: .bold))
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    ForEach(service.hotelInfo.services , id: \.self) { service in
                        HStack(alignment: .top) {
                            Image(systemName: "checkmark")
                                .foregroundColor(.backgroundBrown)
                            
                            Text(service)
                                .font(.body)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.vertical, 2)
                        
                    }
                    ForEach(service.hotelInfo.images, id: \.self) { image in
                        Image(image)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .cornerRadius(10)
                    }
                    Text(service.hotelInfo.title2)
                        .foregroundStyle(.backgroundBrown)
                        .font(.system(size: 18, weight: .bold))
                        .padding()
                        .multilineTextAlignment(.center)
                    Text(service.hotelInfo.titleContact)
                        .foregroundStyle(.backgroundBrown)
                        .font(.system(size: 18, weight: .bold))
                        .padding()
                        .multilineTextAlignment(.center)
                    ForEach(service.hotelInfo.contactDescription, id: \.self) { contact in
                        Text(contact)
                            .font(.body)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .font(.system(size: 16))
                    .padding(.horizontal)
                    
                    NavigationLink(destination: MainRoomsView()){
                        Text("Book Now")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.backgroundBrown)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.top, 30)
                }
                .padding()
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    HotelInfoView()
}
