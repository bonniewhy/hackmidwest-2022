//
//  HomeScreen.swift
//  BragBook
//
//  Created by Liz Wait on 7/23/22.
//

import SwiftUI

struct HomeScreenView: View {
    var bragUser: BragUser
    var body: some View {
        VStack {
            Image("codergirl")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
            HStack {
                Text(bragUser.firstName)
                    .font(.headline)
                Text(bragUser.lastName)
                    .font(.headline)
            }
            Text(bragUser.bio)
            List {
                ForEach(bragUser.entries) { entry in
                    EntryCardView(bragEntry: entry)
                }
            }
        }
        .padding()
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var bragUser = BragUser.sampleUsers[0]
     static var previews: some View {
//         HomeScreenView(bragUser: bragUser)
         NavigationView {
             HomeScreenView(bragUser: BragUser.sampleUsers[0])
         }
     }
}

