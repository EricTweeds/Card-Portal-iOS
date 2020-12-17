//
//  CardRow.swift
//  cardPortal-iOS
//
//  Created by Eric Tweedle on 2020-12-16.
//

import SwiftUI

struct CardRow: View {
    var card: Card

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(card.Brand)
                Text("\(card.Year) | \(card.CardId)")
                    .foregroundColor(Color.gray)
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text("\(card.FirstName) \(card.LastName)")
                Text(card.Team)
                    .foregroundColor(Color.gray)
            }
        }
        .padding(.horizontal)
    }
}

struct CardRow_Previews: PreviewProvider {
    static var cards = ModelData().cards
    static var previews: some View {
        CardRow(card: cards[0])
    }
}
