//
//  Pagination.swift
//  PetSave
//
//  Created by Carlos Kimura on 27/12/23.
//

struct Pagination: Codable {
    let countPerPage: Int
    let totalCount: Int
    let currentPage: Int
    let totalPages: Int
}
