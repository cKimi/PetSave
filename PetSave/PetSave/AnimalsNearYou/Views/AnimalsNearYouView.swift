//
//  AnimalsNearYouView.swift
//  PetSave
//
//  Created by Carlos Kimura on 27/12/23.
//

import SwiftUI

struct AnimalsNearYouView: View {
    
    @State var animals: [Animal] = []
    @State var isLoading = true
    private let requestManager = RequestManager()
    
    var body: some View {
        NavigationView {
            /// 1. Sets up a List with a ForEach that creates an AnimalRow for each animal.
            List {
                ForEach(animals) { animal in
                    AnimalRow(animal: animal)
                }
            }
            
            /// 2. Uses task(priority:) to call fetchAnimals(). Since this is an asynchronous method, you need to use await so the system can handle it properly.
            .task {
                await fetchAnimals()
            }
            .listStyle(.plain)
            .navigationTitle("Animals near you")
            
            /// 3. Adds an overlay(alignment:) that will show a ProgressView when isLoading is true.
            .overlay {
                if isLoading {
                    ProgressView("Finding Animals near you...")
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    func fetchAnimals() async {
        do {
            /// 1. Calls perform(_:) and stores the result in animalsContainer. Since this method uses generics, you need to indicate the type, in this case, AnimalsContainer. You pass 1 to the page as an argument and nil to latitude/longitude because you won't work with location or pagination at this time.
            let animalsContainer: AnimalsContainer = try await requestManager.perform(AnimalsRequest.getAnimalsWith(page: 1, latitude: nil, longitude: nil))
            
            /// 2. Stores the list of animals returned by the request in animals.
            self.animals = animalsContainer.animals
            
            /// 3. Calls stopLoading()
            await stopLoading()
        } catch { }
    }
    
    @MainActor func stopLoading() async {
        isLoading = false
    }
}

#Preview {
    AnimalsNearYouView(animals: Animal.mock, isLoading: false)
}
