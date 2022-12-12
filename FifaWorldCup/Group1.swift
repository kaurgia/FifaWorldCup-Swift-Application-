//
//  Group1.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI

struct Team : Identifiable{
    var id = UUID()
    var name : String
    var flag : String
    
}

struct TeamRow : View{
    var team : Team
    var body: some View {
     
        ZStack{
            
            Image("fifa").resizable().scaledToFit().edgesIgnoringSafeArea(.all).opacity(0.25)

            HStack{
                Image(team.flag).resizable().scaledToFit().frame(width: 80, height: 80, alignment: .center).padding(20)
            
                VStack{
                    Text(team.name).font(.headline).multilineTextAlignment(.leading).frame(width: 300, height: 30, alignment: .leading)
                }
            }//hstack ends here
    
        }.frame(width: 150, height: 100, alignment: .leading)
    }
    
}

struct Group1: View {
    let team : [Team] = [
        Team(name: "Qatar", flag : "qatar"),
        Team(name: "Ecuador", flag : "ecuador"),
        Team(name: "Senegal", flag : "senegal"),
        Team(name: "Netherlands", flag : "netherland")
    ]
    
    var body: some View{
        VStack{
            Text("Group1")
        List(team){t in
            TeamRow(team: t)
        }
        }
    }
}

struct Group1_Previews: PreviewProvider {
    static var previews: some View {
        Group1()
    }
}
