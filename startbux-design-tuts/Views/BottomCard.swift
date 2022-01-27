//
//  BottomCard.swift
//  startbux-design-tuts
//
//  Created by Umang Gadhavana on 26/01/22.
//

import SwiftUI

struct BottomCard: View {
    @Binding var showCard: Bool
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 80)
                .frame(width: UIScreen.main.bounds.width, height: 270)
                .foregroundColor(Color("lightGreen"))
                .offset(x: -2,y: -36)
            
            ZStack(alignment: .bottomLeading) {
                RoundedRectangle(cornerRadius: 80)
                    .frame(width: 500, height: 360)
                    .foregroundColor(Color("darkGreen"))
                    .offset(x: 100,y: 60)
                
                ZStack(alignment: .leading) {
                    VStack {
                        Text("Customize Your Drink")
                            .foregroundColor(Color("cremeWhite"))
                            .font(.headline)
                            .padding(.bottom, 12)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Toppings")
                                .foregroundColor(Color("lightGreen"))
                                .font(.headline)
                                .bold()
                            
                            VStack {
                                HStack {
                                    Text("White Mocha")
                                        .foregroundColor(Color("lightGreen"))
                                        .font(.headline)
                                        .bold()
                                        .padding(.trailing, 120)
                                    
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.orange)
                                }
                                HStack{
                                    Text("Raspberry Syrup")
                                        .foregroundColor(Color("lightGreen"))
                                        .font(.headline)
                                        .bold()
                                        .padding(.trailing, 90)
                                    
                                    Image(systemName: "square")
                                        .foregroundColor(.orange)
                                    
                                }.padding(.top, 4)
                            }
                            
                            Button {
                                print("Hello")
                            } label: {
                                Text("PROCEED")
                                    .bold()
                                    .foregroundColor(Color("darkGreen"))
                                    .background(RoundedRectangle(cornerRadius: 20)
                                                    .frame(width: 280, height: 50)
                                                    .foregroundColor(Color("cremeWhite")))
                                    .padding(.top, 90)
                                    .padding(.leading, 110)
                            }

                        }
                        
                    }.offset(x: (UIScreen.main.bounds.width / 2) - 60, y: (UIScreen.main.bounds.width / 2) - 180)
                }
            }
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 100)
                .offset(x: 220, y: -100)
                .foregroundColor(Color("darkGreen"))


            RoundedRectangle(cornerRadius: 87)
                .frame(width: 340, height: 44)
                .offset(x: 26, y: -142)
                .foregroundColor(Color("lightGreen"))
            
        }
        .offset(y: 12)
        .animation(.interactiveSpring(), value: showCard)
        .blur(radius: self.showCard ? 0 : 1)
        
    }
}
