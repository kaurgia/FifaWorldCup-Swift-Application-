//
//  Group4Match.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI

struct Group4Match: View {
    let match : [Match] = [
        Match(teamX: "Denmark", teamY: "Tunisia", venue: "Education City Stadium, Al Rayyan", date: "22 Nov 2022"),
        Match(teamX: "France", teamY: "Australia", venue: "Al Janoub Stadium,Al Wakrah", date: "Date:22 Nov 2022"),
        Match(teamX: "Tunisia", teamY: "Australia", venue: "Al Janoub Stadium,Al Wakrah", date: "26 Nov 2022"),
        Match(teamX: "France", teamY: "Denmark", venue: "Stadium 974,Doha", date: "26 Nov 2022"),
        Match(teamX: "Australia", teamY: "Denmark", venue: "Al Janoub Stadium, Al Wakrah", date: "30 Nov 2022"),
        Match(teamX: "Tunisia", teamY: "France", venue: "AI Education City Stadium, Al Rayyan", date: "30  Nov 2022")              ]
    var body: some View{
        VStack{
            Text("Group 4 Matches")
        List(match){m in
            MatchRow(match: m)
        }
        }
}
}


struct Group4Match_Previews: PreviewProvider {
    static var previews: some View {
        Group4Match()
    }
}
