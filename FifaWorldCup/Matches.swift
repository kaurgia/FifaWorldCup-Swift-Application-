//
//  Matches.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI

struct Matches: View {
    var body: some View {
        
        TabView{
            Group1Match().tabItem{
                Label("Group 1", systemImage: "square")
            }
            
            Group2Match().tabItem{
                Label("Group 2", systemImage: "square")
            }
            
            Group3Match().tabItem{
                Label("Group 3", systemImage: "square")
            }
            
            Group4Match().tabItem{
                Label("Group 4", systemImage: "square")
            }
            
        } //tab view ends here
        
    }
}

struct Matches_Previews: PreviewProvider {
    static var previews: some View {
        Matches()
    }
}
