//
//  Group2Match.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI

struct Group2Match: View {
    let match : [Match] = [
        Match(teamX: "England", teamY: "Iran", venue: "Khalifa International Stadium", date: "21 Nov 2022"),
        Match(teamX: "United States", teamY: "Wales", venue: "Ahmad bin Ali Stadium", date: "Date:21 Nov 2022"),
        Match(teamX: "Wales", teamY: "Iran", venue: "Ahmad bin Ali Stadium", date: "25 Nov 2022"),
        Match(teamX: "England", teamY: "United States", venue: "Al Bayt Stadium", date: "25  Nov 2022"),
        Match(teamX: "Wales", teamY: "England", venue: "Ahmad bin Ali Stadium", date: "29 Nov 2022"),
        Match(teamX: "Iran", teamY: "United States", venue: "AI Thumama Stadium", date: "29  Nov 2022")              ]
    var body: some View{
        VStack{
            Text("Group 2 Matches")
        List(match){m in
            MatchRow(match: m)
        }
        }
}
    
}

struct Group2Match_Previews: PreviewProvider {
    static var previews: some View {
        Group2Match()
    }
}
