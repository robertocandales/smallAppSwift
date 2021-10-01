//
//  ContentView.swift
//  test
//
//  Created by Roberto Candales on 9/30/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
     var body: some View {
        
        ZStack {
       
            Image("background")
                .resizable(resizingMode: .stretch)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                
                   
                
                Button(action: {
                    
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)

                    //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard="card" + String(cpuRand)
                    
                    //Update the score
                    if playerRand > cpuRand {
                         playerScore += 1
                        
                    } else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                                   
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(10.0)
                        Text(String(playerScore)).font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.subheadline)
                            .foregroundColor(Color.white).padding(10.0)
                        Text(String(cpuScore)).font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    
                }
                Spacer()
            }
          
        }
      
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
