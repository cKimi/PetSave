//
//  EmptyResultsView.swift
//  PetSave
//
//  Created by Carlos Kimura on 27/12/23.
//

import SwiftUI

struct EmptyResultsView: View {
    
    let query: String
    
    var body: some View {
        VStack {
            Image(systemName: "pawprint.circle.fill")
                .resizable()
                .frame(width: 64, height: 64)
                .padding()
                .foregroundColor(.yellow)
            
            Text("Sorry, we couldn't find animals for \"\(query)\"")
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    EmptyResultsView(query: "Xuxinha")
}
