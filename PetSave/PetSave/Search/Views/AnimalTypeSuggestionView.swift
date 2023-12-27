//
//  AnimalTypeSuggestionView.swift
//  PetSave
//
//  Created by Carlos Kimura on 27/12/23.
//

import SwiftUI

struct AnimalTypeSuggestionView: View {
    
    let suggestion: AnimalSearchType
    
    private var gradientColors: [Color] {
        [.clear, .black]
    }
    
    @ViewBuilder private var gradientOverlay: some View {
        LinearGradient(colors: gradientColors, startPoint: .top, endPoint: .bottom)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .opacity(0.3)
    }
    
    var body: some View {
        suggestion.suggestionImage
            .resizable()
            .aspectRatio(1, contentMode: .fill)
            .frame(height: 96)
            .overlay(gradientOverlay)
            .overlay(alignment: .bottomLeading) {
                Text(LocalizedStringKey(suggestion.rawValue.capitalized))
                    .padding(12)
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .cornerRadius(16)
    }
}

#Preview {
    AnimalTypeSuggestionView(suggestion: AnimalSearchType.cat)
}
