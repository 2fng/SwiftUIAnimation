//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by Hua Son Tung on 25/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ImplicitAnimation()
            
            Spacer()
            
            ProgressIndicator()
            
            Spacer()
            
            TestView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
