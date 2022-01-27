//
//  ContentView.swift
//  startbux-design-tuts
//
//  Created by Umang Gadhavana on 25/01/22.
//

import SwiftUI
let data = [
   Food( image: "muffinOne"),
   Food( image: "bready"),
   Food( image: "blueberry-muffin"),
   Food( image: "cakepop"),
   Food( image: "smokedBacon"),
   Food( image: "raspberryChoco")
]

struct ContentView: View {
    @State var foodData = data
    @State var showTopCard: Bool = true
    var body: some View {
        ZStack(alignment: .topLeading) {
            BackSplash()
            VStack{
                TopView()
                TopCard(showTopCard: self.$showTopCard, foodData: self.$foodData)
                ZStack {
                    BottomCard(showCard: self.$showTopCard)
                }
            }
            
        }
    }
}
 
