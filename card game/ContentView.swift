//
//  ContentView.swift
//  card game
//
//  Created by 杉山栞奈 on 2024/07/11.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Spacer()
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            
            VStack {
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
                
                Button("Deal") {
                  deal()
                }.foregroundColor(.white)
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                       
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("player")
                            .font(.headline)
                            .padding([.bottom, .trailing], 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                        
              
                    }
                    Spacer()
                
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding([.bottom, .trailing], 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                
                    }
                    Spacer()
                    
                }
                .foregroundColor(.white)
                Spacer()
            }
            
        }
    }
    
    func deal() {
        //randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //randomize the CPUs card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //update the scores
        if playerCardValue > cpuCardValue {
            
            // add 1 to player score
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            
            //add 1 to cpu score
        cpuScore += 1
        }
       
    }
}

//you may not need this block
struct Contentview_previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
