//
//  BackSplash.swift
//  startbux-design-tuts
//
//  Created by Umang Gadhavana on 25/01/22.
//

import SwiftUI

struct BackSplash: View {
    var body: some View {
        Rectangle()
            .fill(LinearGradient(gradient: Gradient(colors: [Color("lightGreen"), Color("lightGreen")]), startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackSplash_Previews: PreviewProvider {
    static var previews: some View {
        BackSplash()
    }
}
