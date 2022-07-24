//
//  HomeProgressCardComponent.swift
//  BragBook
//
//  Created by Shanice Gipson on 7/23/22.
//

import SwiftUI

struct HomeProgressCardComponent: View {
    @State private var completedAmount = 45.0
    
    var body: some View {
        VStack {
            Text("JUMP BACK INTO:").font(.subheadline)
                .padding(.bottom, 1)
                .padding(.top)
            
            Text("OVERCOMING IMPOSTER SYNDROME")
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(3)
            
            Text("Progress").font(.subheadline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.leading)
                .padding(.bottom, -12)
                .padding(.top, 12)
                .padding(.leading)
            
            ProgressView(value: completedAmount, total: 100)
                .tint(Color("Dark Green"))
                .scaleEffect(x: 1, y:4 , anchor: .center)
                .padding()
           
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu ac tortor dignissim convallis aenean.")
                .multilineTextAlignment(.center)
                .padding([.leading, .trailing], 14)
                .padding([.top, .bottom], 8)
        
            }
        .background(Color.white)
        .cornerRadius(6)
        .padding(8)
        .padding(.bottom, 3)
        .shadow(color: Color.gray, radius: 7, x: 0, y: 4)
        
    }
}

struct HomeProgressCardComponent_Previews: PreviewProvider {
    static var previews: some View {
        HomeProgressCardComponent()
    }
}
