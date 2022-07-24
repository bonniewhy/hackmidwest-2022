//
//  NavigationComponent.swift
//  BragBook
//
//  Created by Liz Wait on 7/23/22.
//

import SwiftUI

struct NavigationComponent: View {
    var body: some View {
        VStack {
            VStack(spacing: 0) {
               LinearGradient(colors: [.white, Color(.sRGB, white: 0.85, opacity: 1)], startPoint: .top, endPoint: .bottom)
                   .frame(height: 6)
                   .opacity(0.8)
            }
            HStack {
                VStack {
                    Image(systemName: "pencil.circle.fill").foregroundColor(Color("Dark Green"))
                        .font(.system(size: 40, weight: .regular))
                    Text("Entries")
                        .foregroundColor(Color("Dark Green"))
                        .font(.system(size: 15, weight: .semibold))
                }
                    .padding(.leading, 50)
                Spacer()
                VStack {
                    Image(systemName: "person.circle.fill")
                        .foregroundColor(Color("Dark Green"))
                        .font(.system(size: 40, weight: .regular))
                    Text("Profile")
                        .foregroundColor(Color("Dark Green"))
                        .font(.system(size: 15, weight: .semibold))
                }
                Spacer()
                VStack {
                    Image(systemName: "book.closed.circle.fill")
                        .foregroundColor(Color("Dark Green"))
                        .font(.system(size: 40, weight: .regular))
                    Text("Journey")
                        .foregroundColor(Color("Dark Green"))
                        .font(.system(size: 15, weight: .semibold))
                }
                    .padding(.trailing, 50)
            }
        }
    }
}

struct NavigationComponent_Previews: PreviewProvider {
    static var previews: some View {
        NavigationComponent()
    }
}
