//
//  ContentView.swift
//  BragBook
//
//  Created by Bonnie Why on 7/23/22.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        Group {
            VStack(alignment: .center) {
                Text("Brag Book")
                    .font(
                        .largeTitle
                        .weight(.bold)
                    )
                    .textCase(.uppercase)
                    .padding(.bottom, 100)
                Text("Tiramisu bonbon donut brownie biscuit sesame snaps wafer apple pie pie. Pastry powder cake lollipop caramels.")
                    .padding(.bottom)
                Text("- Tira Misu")
                    .padding(.leading, 225)
            }
            .foregroundColor(.white)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
            .background(
                Image("sunflower")
                    .scaledToFill()
                    .overlay(
                        Color.black
                            .opacity(0.4)
                    )
            )
    }
}
