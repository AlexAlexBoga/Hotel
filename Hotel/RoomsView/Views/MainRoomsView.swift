//
//  MainRoomsView.swift
//  Hotel
//
//  Created by Александр Богачев on 1.10.24.
//

import SwiftUI

struct MainRoomsView: View {
    
    @StateObject var roomModel = RoomViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("\(roomModel.roomItem.count) Available rooms")
                    
                    VStack(spacing: 10) {
                        ForEach(roomModel.roomItem) { item in
                            NavigationLink {
                                RoomDetailsView(appartments: item)
                                    .toolbar(.hidden, for: .navigationBar)
                            } label: {
                                RoomItemView(item: item)
                                    .tint(.black)
                            }

                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: Alignment(horizontal: .leading, vertical: .top))
                .padding(.horizontal, 20)
            }
            .scrollIndicators(.hidden)
            .background(.white)
        }
    }
}

#Preview {
    MainRoomsView()
}
