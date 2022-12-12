//
//  Home.swift
//  FifaWorldCup
//
//  Created by user224625 on 11/2/22.
//

import SwiftUI
import AVFoundation

struct Home: View {
    
    @State var nowDate : Date = Date()
    
    
    let calendar = Calendar(identifier: .gregorian)
    
    var timer : Timer{
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ _ in
            self.nowDate = Date()
        }
            }
    var body: some View{
        
            ZStack{
                Image("fifa").resizable().scaledToFill().edgesIgnoringSafeArea(.all).opacity(0.25)
                VStack(alignment: .leading){
                    
                    
                Text("CountDown").bold()
                Text(countdownString(from: self.convertStringToDate(), until: nowDate)).font(.largeTitle).onAppear(perform: {
                    let _ = self.timer
                })
                    
                    
                
                HStack{
                    
                    NavigationLink(destination : Teams()){
                        VStack{
                            Image(systemName: "square.fill").resizable().frame(width: 100, height: 100)
                        Text("Teams")
                        }
                    }
                    NavigationLink(destination : Matches()){
                        VStack{
                        Image(systemName: "square.fill").resizable().frame(width: 100, height: 100)
                        Text("Matches")
                        }
                    }
                    NavigationLink(destination : Venue()){
                        VStack{
                        Image(systemName: "square.fill").resizable().frame(width: 100, height: 100)
                            Text("Venues")
                        }
                    }                }
            } //Hstack ends
            }
        
        
    }
    
    func countdownString(from date: Date, until nowDate : Date) -> String {
        let components = calendar.dateComponents([.day, .hour, .minute, .second], from: nowDate, to: date)
        return String(format: "%02dd:%02h:%02dm:%02ds", components.day ?? 00,
                      components.hour ?? 00,
                      components.minute ?? 00,
                      components.second ?? 00)
        
    }
    
    

    func convertStringToDate() -> Date{
        let dateString = "Dec 18, 2022"
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "MMM d, yyyy"
        let date = dateFormatter.date(from: dateString) ?? nil
        return date!
    }}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
