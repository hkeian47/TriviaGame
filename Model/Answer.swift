//
//  Answer.swift
//  TriviaGame
//
//  Created by Hana Keinan on 1/3/22.
//

import Foundation

struct Answer:Identifiable{
    var id = UUID()    // Setting the UUID ourselves inside of the model, because API doesn't return a unique ID for 
    var text: AttributedString
    var isCorrect: Bool
}
