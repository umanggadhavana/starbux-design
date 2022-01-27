//
//  TopView.swift
//  startbux-design-tuts
//
//  Created by Umang Gadhavana on 25/01/22.
//

import SwiftUI
 
struct TopView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                Image("dropsIcon")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .background(RoundedRectangle(cornerRadius: 12)
                                    .frame(width:  40, height: 60)
                                    .foregroundColor(Color("darkGreen")))
                
                Spacer()
                Text("STARBUX")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.heavy)
                    .bold()
                    .padding(.trailing, 80)
                Spacer()
            }.padding(.leading, 90).padding(.top, 12)
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
