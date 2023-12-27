//
//  PhotoSizes.swift
//  PetSave
//
//  Created by Carlos Kimura on 27/12/23.
//

import Foundation

struct PhotoSizes: Codable {
    var id: Int?
    var small: URL?
    var medium: URL?
    var large: URL?
    var full: URL?
}
