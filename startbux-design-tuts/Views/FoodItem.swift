//
//  FoodItem.swift
//  startbux-design-tuts
//
//  Created by Umang Gadhavana on 26/01/22.
//

import SwiftUI

struct FoodItem: View {
    var data: Food
    var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 90, height: 90)
                    .foregroundColor(Color("cremeDarker"))
                
                Image(data.image)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                    .overlay(Circle()
                                .stroke(Color("cremeWhite"), lineWidth: 1))
            }
    }
}
