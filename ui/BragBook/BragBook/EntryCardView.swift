//
//  EntryCardView.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import SwiftUI

struct EntryCardView: View {
    var bragEntry: BragEntry
    var body: some View {
        VStack {
            ForEach(bragEntry.tags, id: \.self) { tag in
                Text(tag)
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .clipShape(Capsule())
            }
            Text(bragEntry.title)
                .font(.headline)
            Text(bragEntry.description)
        }
        .padding()
    }
}

struct EntryCardView_Previews: PreviewProvider {
    static var bragEntry = BragEntry.sampleData[0]
     static var previews: some View {
         EntryCardView(bragEntry: bragEntry)
     }
}
