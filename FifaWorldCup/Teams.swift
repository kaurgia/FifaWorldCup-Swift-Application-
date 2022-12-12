//
//  Teams.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI

struct Teams: View {
    var body: some View {
      
        TabView{
            Group1().tabItem{
                Label("Group 1", systemImage: "square")
            }
            
            Group2().tabItem{
                Label("Group 2", systemImage: "square")
            }
            
            Group3().tabItem{
                Label("Group 3", systemImage: "square")
            }
            
            Group4().tabItem{
                Label("Group 4", systemImage: "square")
            }
            
        } //tab view ends here
        
                
        }
    }


struct Teams_Previews: PreviewProvider {
    static var previews: some View {
        Teams()
    }
}
