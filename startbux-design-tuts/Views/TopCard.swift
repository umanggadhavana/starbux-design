//
//  TopCard.swift
//  startbux-design-tuts
//
//  Created by Umang Gadhavana on 26/01/22.
//

import SwiftUI

struct TopCard: View {
    @Binding var showTopCard: Bool
    @Binding var foodData: [Food]
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 45)
                .frame(width: UIScreen.main.bounds.width * 0.9, height: 270)
                .foregroundColor(Color("cremeWhite"))
                .offset(x: -25)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 100)
                .foregroundColor(Color("cremeWhite"))
                .offset(x: -165, y: 150)
            
            
            HStack {
                Image("frappuccino")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 120, height: 120)
                
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(self.foodData , id: \.id) { item in
                                FoodItem(data: item)
                            }
                        }
                    }//end ScrollView
                    VStack(alignment: .leading) {
                        Text("Caramel Creme Frappuccino")
                            .fontWeight(.heavy)
                            .font(.title)
                            .foregroundColor(Color("darkGreen"))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .lineLimit(nil)
                    }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                }.frame(width: 220)
                    .padding(.trailing, 50)
            }
        }
        .offset(y: 30)
        .animation(.spring(), value: showTopCard)
        .onTapGesture {
            self.showTopCard.toggle()
        }
        .offset(x: self.showTopCard ? 0 : -300)
    }
}
