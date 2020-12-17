//
//  Card.swift
//  cardPortal-iOS
//
//  Created by Eric Tweedle on 2020-12-16.
//

import Foundation

struct Card: Hashable, Codable, Identifiable {
    var id: String
    var Brand: String
    var CardId: String
    var FirstName: String
    var LastName: String
    var Number: String
    var Position: String
    var Series: String
    var Sport: String
    var Team: String
    var Year: String
    var Details: String
    var Condition: String
}
