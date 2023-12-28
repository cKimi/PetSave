//
//  RequestType.swift
//  PetSave
//
//  Created by Carlos Kimura on 28/12/23.
//

/// There are five REST API request types:
/// - POST
/// - GET
/// - PUT
/// - PATCH
/// - DELETE
///
/// You only need POST and GET for this app.

enum RequestType: String {
    case GET
    case POST
}
