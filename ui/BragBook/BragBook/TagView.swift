//
//  TagView.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import SwiftUI

struct TagView: View {
    var bragTag: BragTag
    var body: some View {
        Text(bragTag.name)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct TagView_Previews: PreviewProvider {
    static var bragTag = BragTag.sampleTags[0]
     static var previews: some View {
         TagView(bragTag: bragTag)
     }
}
