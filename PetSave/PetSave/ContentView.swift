//
//  ContentView.swift
//  PetSave
//
//  Created by Carlos Kimura on 27/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            AnimalsNearYouView()
                .tabItem { Label("Near you", systemImage: "location") }
            
            SearchView()
                .tabItem { Label("Search", systemImage: "magnifyingglass") }
        }
    }
}

#Preview {
    ContentView()
}
