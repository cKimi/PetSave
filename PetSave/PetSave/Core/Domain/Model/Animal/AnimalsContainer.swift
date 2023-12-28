//
//  AnimalsContainer.swift
//  PetSave
//
//  Created by Carlos Kimura on 28/12/23.
//

import Foundation

struct AnimalsContainer: Decodable {
    let animals: [Animal]
    let pagination: Pagination
}
