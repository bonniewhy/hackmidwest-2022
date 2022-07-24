//
//  TagView.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import SwiftUI

struct TagView: View {
    var bragTag: Tag
    var body: some View {
        Text(bragTag.title)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

//struct TagView_Previews: PreviewProvider {
//    static var bragTag = Tag.sampleTag
//    static var previews: some View {
//        TagView(bragTag: bragTag)
//    }
//}
