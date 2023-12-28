//
//  AnimalsMock.swift
//  PetSave
//
//  Created by Carlos Kimura on 28/12/23.
//

import Foundation

private struct AnimalsMock: Codable {
    let animals: [Animal]
}

private func loadAnimals() -> [Animal] {
    guard let url = Bundle.main.url(forResource: "AnimalsMock", withExtension: "json"), let data = try? Data(contentsOf: url) else { return [] }
    
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    
    let jsonMock = try? decoder.decode(AnimalsMock.self, from: data)
    return jsonMock?.animals ?? []
}

extension Animal {
    static let mock = loadAnimals()
}
