//
//  ContentView.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        NavigationView{
        ZStack{
            Image("fifa").resizable().scaledToFill().edgesIgnoringSafeArea(.all).opacity(0.25)
            NavigationLink(destination: Home()){
                Text("Go to home page")
            }
    }
        
}
    
    
}
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
