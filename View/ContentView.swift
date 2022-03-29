//
//  ContentView.swift
//  TriviaGame
//
//  Created by Hana Keinan on 1/3/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Trivia Game")
                        .Title()
                    Text(" Are you ready to test out your trivia skills?")

                        .foregroundColor(Color("AccentColor"))
                            
                }
                NavigationLink {
                    TriviaView()
                        .environmentObject(triviaManager)
                 } label: {
                    PrimaryButton (text: "Let's go!")
                }
            }
            .frame (maxWidth: .infinity, maxHeight:
                .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(white: 1.4745))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

