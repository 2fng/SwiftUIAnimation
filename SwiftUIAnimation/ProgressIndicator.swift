//
//  ProgressIndicator.swift
//  SwiftUIAnimation
//
//  Created by Hua Son Tung on 01/02/2021.
//

import SwiftUI

struct ProgressIndicator: View {
    
    @State private var progress: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            
            Text("\(Int(progress*100))%")
                .font(.system(size: 50, design: .rounded))
                .bold()
            
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 25)
                .frame(width: 300, height: 300, alignment: .center)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color(.systemPurple), lineWidth: 25)
                .frame(width: 300, height: 300, alignment: .center)
                .rotationEffect(Angle(degrees: -90))
            
        }
        .onAppear() {
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                self.progress += 0.05
                print(self.progress)
                if self.progress >= 1.0 {
                    timer.invalidate()
                }
            }
        }
    }
}

struct ProgressIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ProgressIndicator()
    }
}
