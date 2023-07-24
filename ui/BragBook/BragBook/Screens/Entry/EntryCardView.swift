//
//  EntryCardView.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import SwiftUI

struct EntryCardView: View {
    var bragEntry: FakeEntry
    var body: some View {
        VStack(spacing: 10) {
            Text(bragEntry.title ?? "")
                .font(.title)
            Text(bragEntry.body ?? "")
                .font(.body)
            ForEach(bragEntry.tags!) { tag in
                TagView(bragTag: tag)
            }
            Text(bragEntry.title ?? "")
                .font(.headline)
            Text(bragEntry.body ?? "")
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
