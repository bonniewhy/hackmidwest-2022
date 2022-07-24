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
                Image("bragbook-transparent")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250)
                VStack {
                Text("When someone says you can't do it - Do it twice and take pictures.")
                    .padding(.bottom)
                    .foregroundColor(Color.white)
                }
                .padding()
            }
            .background(
                Image("pink-background")
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
