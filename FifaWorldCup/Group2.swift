//
//  Group2.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI



struct Group2: View {
    let team : [Team] = [
        Team(name: "England", flag : "england"),
        Team(name: "Iran", flag : "iran"),
        Team(name: "United States", flag : "unitedstates"),
        Team(name: "Wales", flag : "wales")
    ]
    
    var body: some View{
        VStack{
            Text("Group2")
        List(team){t in
            TeamRow(team: t)
        }
        }
    }
}

struct Group2_Previews: PreviewProvider {
    static var previews: some View {
        Group2()
    }
}
