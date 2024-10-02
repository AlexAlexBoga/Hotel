//
//  HotelInfoView.swift
//  Hotel
//
//  Created by Александр Богачев on 1.10.24.
//

import SwiftUI

struct HotelInfoView: View {
    let services: HotelServices = HotelServices.mockData()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 10) {
                    Image(.cgLogo)
                        .padding(.leading, 30)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    
                    Text("GREAT LOCATION, AMIABLE SERVICE AND ALWAYS GOOD PRICE")
                        .foregroundStyle(.backgroundBrown)
                        .font(.system(size: 18, weight: .bold))
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    Text("City Gate hotel was newly renovated in 2017. At present, our hotel offers 53 comfortable up-to-date rooms, 3 conference halls, authentic restaurant, a stylish comfortable internal courtyard and free parking area.")
                        .font(.system(size: 18, weight: .medium))
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    Text("FEEL THE COMFORT AND COZINESS OF OUR HOTEL. WE ARE AT YOUR SERVICE:")
                        .foregroundStyle(.backgroundBrown)
                        .font(.system(size: 18, weight: .bold))
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    ForEach(services.services, id: \.self) { service in
                        HStack(alignment: .top) {
                            Image(systemName: "checkmark")
                                .foregroundColor(.backgroundBrown)
                            
                            Text(service)
                                .font(.body)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.vertical, 2)
                        
                        
                    }
                    ForEach(services.images, id: \.self) { image in
                        Image(image)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .cornerRadius(10)
                    }
                    
                    Text("We are looking forward to welcoming you at the City Gate hotel!")
                        .foregroundStyle(.backgroundBrown)
                        .font(.system(size: 18, weight: .bold))
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    Text("Contact Information")
                        .foregroundStyle(.backgroundBrown)
                        .font(.system(size: 18, weight: .bold))
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("JSC City Gate, company code 110874198")
                        Text("Bazilijonų str. 3, LT-01304 Vilnius, Lithuania")
                        Text("Phone: (+370) 5 210 7306; (+370) 698 28833")
                        Text("Fax: (+370) 5 210 7307")
                        Text("E-mail: hotel@citygate.lt")
                        Text("Website: www.citygate.lt")
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
