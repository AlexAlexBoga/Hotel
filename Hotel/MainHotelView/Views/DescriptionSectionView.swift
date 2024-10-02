//
//  DescriptionSectionView.swift
//  Hotel
//
//  Created by Александр Богачев on 2.10.24.
//

import SwiftUI

struct DescriptionSectionView: View {
    let headLine: String
    let description: String
    let destination: AnyView
    
    
    var body: some View {
        
        VStack {
            Text(headLine)
                .foregroundStyle(.backgroundBrown)
                .font(.system(size: 18, weight: .bold))
                .padding()
                .multilineTextAlignment(.center)
                .padding(.top, 0)
            
            Text(description)
                .font(.system(size: 18, weight: .medium))
                .multilineTextAlignment(.center)
                .padding(.top, 0)
            
            NavigationLink(destination: destination) {
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
    }
}
