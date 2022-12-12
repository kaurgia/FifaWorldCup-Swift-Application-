//
//  Venue.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI

struct Venues : Identifiable{
    var id = UUID()
    var stdName : String
    var image : String
    var capacity : String
}

struct VenueRow : View{
    var venue : Venues
    var body: some View{
        
            HStack{
            Image(venue.image).resizable().scaledToFit().frame(width: 50, height: 50, alignment: .center).padding(10)
            
            VStack{
            Text(venue.stdName).font(.headline).frame(width: 300, height: 30, alignment: .leading)
                
                           }
        
    
        }.navigationBarTitle("Venues")
}
}


struct Venue: View {
        let venue : [Venues] = [
        Venues(stdName: "AI Bayt Stadium", image: "aibayt", capacity: "60,000"),
        Venues(stdName: "Lusail Stadium", image: "lusail", capacity: "80,000"),
        Venues(stdName: "Ahmad bin Ali Stadium", image: "ahmadbinali", capacity: "40,000"),
        Venues(stdName: "AI Janoub Stadium", image: "aijanoub", capacity: "40,000"),
        Venues(stdName: "AI Thumama Stadium", image: "aithumama", capacity: "40,000"),
        Venues(stdName: "Education City Stadium", image: "educationcity", capacity: "40,000"),
        Venues(stdName: "Khalifa International Stadium", image: "khalifainternational", capacity: "40,000"),
        Venues(stdName: "Stadium 974", image: "stadium974", capacity: "40,000"),
        ]
        var body: some View{
            
        
            List(venue){v in
                NavigationLink( destination: VenueDetailView(venue : v)){
                    VenueRow(venue: v)
                }
                     
                
            }//list ends here
            
    }
}

struct Venue_Previews: PreviewProvider {
    static var previews: some View {
        Venue()
    }
}
