//
//  VenueDetailView.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI

struct VenueDetailView: View {
    
    var venue : Venues
    
    
    var body: some View {
        ZStack{
            Image("fifa").resizable().scaledToFill().edgesIgnoringSafeArea(.all).opacity(0.25)
            
        VStack{
            Image(venue.image).resizable().scaledToFit().frame(width: 500, height: 350, alignment: .center)
            Text(venue.stdName).font(.headline).frame(width: 300, height: 50, alignment: .center)
            Text("Capacity : \(venue.capacity)").font(.headline).frame(width: 300, height: 50, alignment: .center)
        }
        }
    }
}

