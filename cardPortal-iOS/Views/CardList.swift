//
//  CardList.swift
//  cardPortal-iOS
//
//  Created by Eric Tweedle on 2020-12-16.
//

import SwiftUI

struct CardList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(modelData.cards) { card in
                    NavigationLink(destination: CardDetails(card: card)) {
                        CardRow(card: card)
                    }
                }
            }
            .navigationTitle("Hockey Cards")
        }
    }
}

struct CardList_Previews: PreviewProvider {
    static var previews: some View {
        CardList()
            .environmentObject(ModelData())
    }
}
