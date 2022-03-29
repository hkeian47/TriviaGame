//
//  TriviaView.swift
//  TriviaGame
//
//  Created by Hana Keinan on 1/15/22.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager:TriviaManager
    
    var body: some View {
        if triviaManager.reachedEnd{
            
        VStack(spacing: 20) {
            Text("Trivia Game")
                .Title()

            Text("Congratulations, you completed the game! 🥳")

            Text("You scored \( triviaManager.score) out of \(triviaManager.length)")

            Button {
                Task.init {
                    await triviaManager.fetchTrivia()
                }
            } label: {
                PrimaryButton(text: "Play again")
            }
        }
        .foregroundColor(Color("AccentColor"))
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(white: 1.4745))
        } else{
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
