//
//  Group1Match.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI

struct Match : Identifiable{
    var id = UUID()
    var teamX : String
    var teamY : String
    var venue : String
    var date : String
}

struct MatchRow : View{
    var match : Match
    var body: some View {
    
          
    
            HStack{
                Text(match.teamX).font(.subheadline).multilineTextAlignment(.leading).frame(width: 80, height: 30, alignment: .leading).padding(10)
                Text (match.teamY).font(.subheadline).multilineTextAlignment(.leading).frame(width: 80, height: 30, alignment: .leading).padding(10)
                VStack{
                    Text(match.date).font(.body).fontWeight(.medium).multilineTextAlignment(.leading).frame(width: 170, height: 30, alignment: .leading)
                    Text(match.venue).font(.system(size: 10)).multilineTextAlignment(.leading).frame(width: 170, height: 30, alignment: .leading)
                }
            }.frame(width: 150, height: 80, alignment: .leading).navigationBarTitle("Matches") //Hstack ends here
        
    }
    
}
struct Group1Match: View {
        let match : [Match] = [
            Match(teamX: "Qatar", teamY: "Ecuador", venue: "Al Bayt Stadium, Al Khor", date: "20 Nov 2022"),
            Match(teamX: "Senegal", teamY: "Netherlands", venue: "Al Thumama Stadium, Doha", date: "Date:21 Nov 2022"),
            Match(teamX: "Qatar", teamY: "Senegal", venue: "Al Thumama Stadium, Doha", date: "25 Nov 2022"),
            Match(teamX: "Netherlands", teamY: "Ecuador", venue: "Khalifa International Stadium", date: "25  Nov 2022"),
            Match(teamX: "Ecuador", teamY: "Senegal", venue: "Khalifa International Stadium", date: "29 Nov 2022"),
            Match(teamX: "Netherlands", teamY: "Qatar", venue: "Al Bayt Stadium, Al Khor", date: "29  Nov 2022")              ]
        var body: some View{
            VStack{
                Text("Group 1 Matches")
            List(match){m in
                MatchRow(match: m)
            }
            }
    }
}

struct Group1Match_Previews: PreviewProvider {
    static var previews: some View {
        Group1Match()
    }
}
