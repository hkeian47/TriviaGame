//
//  Text.swift
//  TriviaGame
//
//  Created by Hana Keinan on 1/3/22.
//

import Foundation

import SwiftUI

extension Text{
    
    func Title() -> some View{
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
   
