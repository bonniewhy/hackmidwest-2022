//
//  BragUser.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import Foundation

struct BragUser: Identifiable {
    let id: UUID
    var firstName: String
    var lastName: String
    var bio: String
    var email: String
    var password: String
//    var entries: [UUID]
    var entries: [BragEntry]
    
    init(id: UUID = UUID(), firstName: String, lastName: String, bio: String, email: String, password: String, entries: [BragEntry]) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.bio = bio
        self.email = email
        self.password = password
        self.entries = entries
    }
}

extension BragUser {
    static let sampleUsers: [BragUser] =
    [
        BragUser(
            firstName: "Savannah",
            lastName: "Brooks",
            bio: "Jujubes ice cream donut toffee dragée cake. Dessert muffin sweet chocolate bar pie halvah caramels. Halvah bear claw danish liquorice pie tootsie roll wafer ice cream tart. Pie danish lollipop sesame snaps sesame snaps bear claw sesame snaps jelly beans. Sweet roll cotton candy donut shortbread bear claw. Halvah cupcake cake candy candy canes marshmallow. Tiramisu candy canes pudding halvah marzipan lollipop oat cake liquorice donut.",
            email: "sbrooks.gmail.com",
            password: "hackmidwest2022",
            entries: [BragEntry.sampleData[0], BragEntry.sampleData[1], BragEntry.sampleData[2]]
        )
    ]
}
