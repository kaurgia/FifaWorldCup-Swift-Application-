//
//  Group4.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI

struct Group4: View {
    let team : [Team] = [
        Team(name: "France", flag : "france"),
        Team(name: "Australia", flag : "australia"),
        Team(name: "Denmark", flag : "denmark"),
        Team(name: "Tunisia", flag : "tunisia")
    ]
    
    var body: some View{
        VStack{
            Text("Group4")
        List(team){t in
            TeamRow(team: t)
        }
        }
    }
}

struct Group4_Previews: PreviewProvider {
    static var previews: some View {
        Group4()
    }
}
