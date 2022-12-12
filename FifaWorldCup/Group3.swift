//
//  Group3.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI


struct Group3: View {
    let team : [Team] = [
        Team(name: "Argentina", flag : "argentina"),
        Team(name: "Saudi Arabia", flag : "saudiarabia"),
        Team(name: "Poland", flag : "poland"),
        Team(name: "Mexico", flag : "mexico")
    ]
    
    var body: some View{
        VStack{
            Text("Group3")
        List(team){t in
            TeamRow(team: t)
        }
        }
    }
}

struct Group3_Previews: PreviewProvider {
    static var previews: some View {
        Group3()
    }
}
