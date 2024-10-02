//
//  ConferenceView.swift
//  Hotel
//
//  Created by Александр Богачев on 2.10.24.
//

import SwiftUI

struct ConferenceView: View {
    
    let services: ConferenceServices = ConferenceServices.mockData()
    
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                let minY = geometry.frame(in: .global).minY
                Image(.konf3)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200 + (minY > 0 ? minY : 0))
                    .frame(width: geometry.size.width)
                    .clipped()
                    .offset(y: -minY)
                    .overlay(
                            Text("City Gate hotel Conference center")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .bold()
                                .padding(.horizontal)
                                .padding(.top, -130),
                            alignment: .leading
                    )
            }
            .frame(height: 200)
            VStack {
                
                VStack {
                    
                    Image(.konf2)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    
                    Text("BOARD ROOM")
                        .font(.system(size: 22, weight: .black))
                        .padding(.top, 10)
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                .padding(.bottom, 0)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.top, -30)
                
                IconTextRowConf()
                    .padding(.top, 5)
                
                VStack {
                    
                    Image(.konf1)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    
                    Text("CONFERENCE ROOM")
                        .font(.system(size: 22, weight: .black))
                        .padding(.top, 10)

                }
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                .padding(.bottom, 0)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.top, 30)
                
                IconTextRowConf()
                    .padding(.top, 5)
                
                VStack {
                    
                    Image(.konf3)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    
                    Text("LARGE CONFERENCE ROOM")
                        .font(.system(size: 22, weight: .black))
                        .padding(.top, 10)

                }
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                .padding(.bottom, 0)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.top, 30)
                
                IconTextRowConf()
                    .padding(.top, 5)
            }
            .background(Color.white)
            
            Text("Services:")
                .font(.system(size: 22, weight: .black))
                .padding(.top, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            ForEach(services.services, id: \.self) { service in
                HStack(alignment: .top) {
                    Image(systemName: "checkmark")
                        .foregroundColor(.backgroundBrown)
                    
                    Text(service)
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .background(.white)
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                
                
            }
            
        }
    }
}

#Preview {
    ConferenceView()
}
