//
//  LoadingView.swift
//  SwiftUIAnimation
//
//  Created by Hua Son Tung on 01/02/2021.
//

import SwiftUI

struct LoadingView: View {
    
    @State private var isLoading = false
    var body: some View {
        VStack {
            Text("Loading")
                .font(.system(.body, design: .rounded))
                .bold()
            ZStack {
                RoundedRectangle(cornerRadius: 3)
                    .stroke(Color(.systemGray5), lineWidth: 3)
                    .frame(width: 250, height: 3, alignment: .center)
                
                RoundedRectangle(cornerRadius: 3)
                    .stroke(Color(.green), lineWidth: 3)
                    .frame(width: 50, height: 3, alignment: .center)
                    .offset(x: isLoading ? 110 : -100, y: 0)
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                
            }
            
        }
        .onAppear() {
            self.isLoading = true
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
