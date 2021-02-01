//
//  ImplicitAnimation.swift
//  SwiftUIAnimation
//
//  Created by Hua Son Tung on 25/01/2021.
//

import SwiftUI

struct ImplicitAnimation: View {
    
    @State private var isLoading  = false
    
    var body: some View {
        Button(action: {
            self.isLoading.toggle()
        }) {
            ZStack {
                Circle()
                    .stroke(Color(.systemGray5), lineWidth: 14)
                    .frame(width: 100, height: 100)
                
                Circle()
                    .trim(from: 0.0, to: 0.2)
                    .stroke(Color.green, lineWidth: 7)
                    .frame(width: 100, height: 100)
                    .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                
            }
        }
    }
}

struct ImplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitAnimation()
    }
}
