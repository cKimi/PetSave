//
//  AnimalRow.swift
//  PetSave
//
//  Created by Carlos Kimura on 28/12/23.
//

import SwiftUI

struct AnimalRow: View {
    let animal: Animal
    
    var body: some View {
        HStack {
            AsyncImage(url: animal.picture) { image in
                image
                    .resizable()
            } placeholder: {
                Image(systemName: "dog.fill")
                    .resizable()
                    .overlay {
                        if animal.picture != nil {
                            ProgressView()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(.gray.opacity(0.4))
                        }
                    }
            }
            .aspectRatio(contentMode: .fit)
            .frame(width: 112, height: 112)
            .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(animal.name)
                    .multilineTextAlignment(.center)
                    .font(.title3)
            }
            .lineLimit(1)
        }
    }
}

#Preview {
    AnimalRow(animal: Animal.mock.first!)
}
