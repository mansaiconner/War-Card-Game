//
//  ContentView.swift
//  War Card Game
//
//  Created by Mansai Conner on 2/3/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var computerCard = "back"
    
    @State var playerScore = 0
    @State var computerScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
            
            VStack {
                Spacer()
                Button {
                    playerScore = 0
                    computerScore = 0
                    playerCard = "back"
                    computerCard = "back"
                } label: {Image("logo")}
                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
                
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
                    Spacer()
                }
                .padding()
                Spacer()
                
                // Button
                
                Button {
                    dealCards()
                } label: {
                    Image("button")
                    
                    
                }
                
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                        Text(String(playerScore))
                    }.padding()
                    Spacer()
                    VStack() {
                        Text("Computer")
                        Text(String(computerScore))
                    }
                    .padding()
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .font(.title)
            .foregroundStyle(.white)
        }
        
    }
    
    func dealCards() {
        // Randomize card values
        var playerValue = Int.random(in: 2...14)
        var computerValue = Int.random(in: 2...14)
        
        
        // Update the card images
        playerCard = "card" + String(playerValue)
        computerCard = "card" + String(computerValue)
        // Calculate the score
        if playerValue > computerValue {
            playerScore += 1
        }
        else if computerValue > playerValue {
            computerScore += 1
        }
        // Update the score labels
    }
    
}

#Preview {
    ContentView()
}
