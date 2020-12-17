//
//  CardDetails.swift
//  cardPortal-iOS
//
//  Created by Eric Tweedle on 2020-12-16.
//

import SwiftUI

struct CardDetails: View {
    var card: Card

    var body: some View {
        ScrollView {
            Text("\(card.FirstName) \(card.LastName)")
                .font(.title)
            Text(card.Team)
                .font(.subheadline)
            HStack {
                Text(card.Position)
                    .font(.subheadline)
                Text("#\(card.Number)")
                    .font(.subheadline)
            }
            Divider()
            VStack() {
                HStack {
                    Text("Brand:")
                    Spacer()
                    Text(card.Brand)
                }.padding()
                HStack {
                    Text("Year:")
                    Spacer()
                    Text(card.Year)
                }.padding()
                HStack {
                    Text("Card Id:")
                    Spacer()
                    Text(card.CardId)
                }.padding()
                HStack {
                    Text("Condition:")
                    Spacer()
                    Text(card.Condition)
                        .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                }.padding()
                HStack {
                    Text("Series:")
                    Spacer()
                    Text(card.Series)
                }.padding()
                HStack {
                    Text("Details:")
                    Spacer()
                    Text(card.Details)
                }.padding()
            }
            .frame(maxWidth: .infinity)
            Spacer()
        }
    }
}

struct CardDetails_Previews: PreviewProvider {
    static let cards = ModelData().cards

    static var previews: some View {
        CardDetails(card: cards[0])
    }
}
