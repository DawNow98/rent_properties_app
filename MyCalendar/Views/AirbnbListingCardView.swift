//
//  AirbnbListingCardView.swift
//  MyCalendar
//
//  Created by Dawid Nowacki on 06/02/2024.
//

import Foundation
import SwiftUI

struct AirbnbListingCardView: View {
    
    let model: AirbnbListing
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: model.thumbnail_url ?? "Error with downloading picture"))
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipped()
            
            VStack {
                Text(model.name ?? "Listing")
                    .lineLimit(1)
                    .font(.title3)
                    .bold()
                
                Text(model.description ?? "Listing")
                    .lineLimit(3)
                    .foregroundStyle(Color.secondary)
                    .font(.body)
            }
        }
    }
}

//#Preview {
//    AirbnbListingCardView(model: )
//}
