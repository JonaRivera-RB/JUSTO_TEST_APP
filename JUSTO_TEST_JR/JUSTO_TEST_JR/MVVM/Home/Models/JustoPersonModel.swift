//
//  JustoPersonModel.swift
//  JUSTO_TEST_JR
//
//  Created by Jonathan Rivera on 18/04/22.
//

import Foundation

struct JustoPersonModel: Codable {
    let results: [ResultPersonInfo]?
    let info: Info
}

// MARK: - Info
struct Info: Codable {
    let seed: String
    let results, page: Int
    let version: String
}

// MARK: - ResultPersonInfo
struct ResultPersonInfo: Codable {
    let name: Name?
    let location: Location?
    let email: String?
    let login: Login?
    let phone: String?
    let id: ID?
    let picture: Picture?
}

// MARK: - ID
struct ID: Codable {
    let name, value: String?
}

// MARK: - Location
struct Location: Codable {
    let coordinates: Coordinates?
}

// MARK: - Coordinates
struct Coordinates: Codable {
    let latitude, longitude: String?
}

// MARK: - Login
struct Login: Codable {
    let username: String?
}

// MARK: - Name
struct Name: Codable {
    let title, first, last: String?
}

// MARK: - Picture
struct Picture: Codable {
    let large: String?
}
