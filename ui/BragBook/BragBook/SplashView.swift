//
//  ContentView.swift
//  BragBook
//
//  Created by Bonnie Why on 7/23/22.
//

import SwiftUI

struct SplashView: View {
    @Binding var isShown: Bool

    var body: some View {
        ZStack(alignment: .center) {
            VStack(alignment: .center) {
                Text("Brag Book")
                    .font(
                        .largeTitle
                            .weight(.bold)
                    )
                    .textCase(.uppercase)
                    .padding(.bottom, 100)
                    .foregroundColor(Color.white)
                Text("Tiramisu bonbon donut brownie biscuit sesame snaps wafer apple pie pie. Pastry powder cake lollipop caramels.")
                    .padding(.bottom)
                    .foregroundColor(Color.white)
                Text("- Tira Misu")
                    .padding(.leading, 225)
                    .foregroundColor(Color.white)
            }
            .background(
                Image("sunflower")
                    .scaledToFill()
                    .overlay(
                        Color.black
                            .opacity(0.4)
                    )
            )
        }
        .opacity(isShown ? 1 : 0)
    }
}

public extension View {
    func loadingSplashScreen(isShown: Binding<Bool>) -> some View {
        ZStack {
            self
            SplashView(isShown: isShown)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(isShown: .constant(true))
    }
}
