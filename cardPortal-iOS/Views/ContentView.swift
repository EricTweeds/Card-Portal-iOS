//
//  ContentView.swift
//  cardPortal-iOS
//
//  Created by Eric Tweedle on 2020-11-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
