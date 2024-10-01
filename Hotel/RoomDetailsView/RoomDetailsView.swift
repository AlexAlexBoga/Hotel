//
//  RoomDetailsView.swift
//  Hotel
//
//  Created by Александр Богачев on 1.10.24.
//

import SwiftUI

struct RoomDetailsView: View {
    var appartments: Rooms
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        let gridItem: [GridItem] = [
            GridItem(.adaptive(minimum: 100, maximum: 200), spacing: 4),
            GridItem(.adaptive(minimum: 100, maximum: 200), spacing: 4),
        ]
        ZStack(alignment: .center) {
            ScrollView {
           
                VStack(spacing: 0) {
                        GeometryReader { geometry in
                            let minY = geometry.frame(in: .global).minY
                            Image(appartments.image)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 400 + (minY > 0 ? minY : 0))
                                .frame(width: geometry.size.width)
                                .clipped()
                                .offset(y: -minY)
                        }
                        .frame(height: 400)
                        
                    VStack(alignment: .leading, spacing: 32) {
                            VStack(alignment: .leading, spacing: 20) {
                                VStack(alignment: .leading, spacing: 13) {
                                    Text(appartments.name)
                                        .font(.system(size: 22, weight: .black))
                                    Text("\(appartments.price, specifier:  "%.2f") EUR")
                                        .font(.system(size: 22, weight: .black))
                                    Text("test")
                                        .font(.system(size: 13))
                                        .foregroundStyle(.gray)
                                }
                                HStack {
                                    ForEach(appartments.options) { option in
                                        RoomItemOption(optin: option)
                                    }
                                    
                                }
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Room photo")
                                    .font(.system(size: 24, weight: .black))
                                
                                LazyVGrid(columns: gridItem, spacing: 4) {
                                    ForEach(appartments.descriptionImage, id: \.self) {
                                        RoomDetailsImage(image: $0)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 35)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.top, -30)
                        
                    }
             
                    }
            VStack {
                
                HStack {
                    HStack {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "chevron.left")
                            Text("Back")
                        }
                        .tint(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                  
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .padding(.horizontal, 20)
                .padding(.top, 65)
                .clipped()
                
                Spacer()
                HStack(spacing: 12) {
                    BottomButton(text: "Call Back", color: .backButton, foregroundColor: .white)
                    BottomButton(text: "Call", color: .backButton, foregroundColor: .white)
                }
                .padding(.bottom, 40)
                .padding(.horizontal, 20)
            }
           
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RoomDetailsView(appartments: Rooms.mockData().first!)
}
