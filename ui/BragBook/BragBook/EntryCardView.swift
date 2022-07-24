//
//  EntryCardView.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import SwiftUI

struct EntryCardView: View {
    var bragEntry: Entry
    var body: some View {
        VStack {
            ForEach(bragEntry.tags, id: \.self) { tag in
                TagView(bragTag: tag)
            }
            Text(bragEntry.title)
                .font(.headline)
            Text(bragEntry.body)
        }
        .padding()
    }
}

//struct EntryCardView_Previews: PreviewProvider {
//    static var bragEntry = Entry.sampleEntry
//     static var previews: some View {
//         EntryCardView(bragEntry: bragEntry)
//     }
//}
