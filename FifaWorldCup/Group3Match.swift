//
//  Group3Match.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI

struct Group3Match: View {
    let match : [Match] = [
        Match(teamX: "Argentina", teamY: "Saudi Arabia", venue: "Lusail Iconic Stadiu,", date: "22 Nov 2022"),
        Match(teamX: "Mexico", teamY: "Poland", venue: "Stadium 974, Doha", date: "Date:22 Nov 2022"),
        Match(teamX: "Poland", teamY: "Saudi Arabia", venue: "Education city Stadium", date: "26 Nov 2022"),
        Match(teamX: "Argentina", teamY: "Mexico", venue: "Lusail Iconic Stadium", date: "26  Nov 2022"),
        Match(teamX: "Poland", teamY: "Argentina", venue: "Stadium 974, Doha", date: "30 Nov 2022"),
        Match(teamX: "Saudi Arabia", teamY: "Mexico", venue: "Lusail Iconic Stadium", date: "30  Nov 2022")              ]
    var body: some View{
        VStack{
            Text("Group 3 Matches")
        List(match){m in
            MatchRow(match: m)
        }
        }
}
}

struct Group3Match_Previews: PreviewProvider {
    static var previews: some View {
        Group3Match()
    }
}
