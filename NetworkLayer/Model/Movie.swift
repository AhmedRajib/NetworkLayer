//
//  Movie.swift
//  NetworkLayer
//
//  Created by Malcolm Kumwenda on 2018/03/08.
//  Copyright © 2018 Malcolm Kumwenda. All rights reserved.
//

import Foundation

//struct MovieApiResponse {
//    let page: Int
//    let numberOfResults: Int
//    let numberOfPages: Int
//    let movies: [Movie]
//}
//
//extension MovieApiResponse: Decodable {
//
//    private enum MovieApiResponseCodingKeys: String, CodingKey {
//        case page
//        case numberOfResults = "total_results"
//        case numberOfPages = "total_pages"
//        case movies = "results"
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: MovieApiResponseCodingKeys.self)
//
//        page = try container.decode(Int.self, forKey: .page)
//        numberOfResults = try container.decode(Int.self, forKey: .numberOfResults)
//        numberOfPages = try container.decode(Int.self, forKey: .numberOfPages)
//        movies = try container.decode([Movie].self, forKey: .movies)
//
//    }
//}
//
//
//struct Movie {
//    let id: Int
//    let posterPath: String
//    let backdrop: String
//    let title: String
//    let releaseDate: String
//    let rating: Double
//    let overview: String
//}
//
//extension Movie: Decodable {
//
//    enum MovieCodingKeys: String, CodingKey {
//        case id
//        case posterPath = "poster_path"
//        case backdrop = "backdrop_path"
//        case title
//        case releaseDate = "release_date"
//        case rating = "vote_average"
//        case overview
//    }
//
//
//    init(from decoder: Decoder) throws {
//        let movieContainer = try decoder.container(keyedBy: MovieCodingKeys.self)
//
//        id = try movieContainer.decode(Int.self, forKey: .id)
//        posterPath = try movieContainer.decode(String.self, forKey: .posterPath)
//        backdrop = try movieContainer.decode(String.self, forKey: .backdrop)
//        title = try movieContainer.decode(String.self, forKey: .title)
//        releaseDate = try movieContainer.decode(String.self, forKey: .releaseDate)
//        rating = try movieContainer.decode(Double.self, forKey: .rating)
//        overview = try movieContainer.decode(String.self, forKey: .overview)
//    }
//}


import Foundation

// MARK: - WelcomeElement
struct CountryListModel: Codable {
    let name: Name?
    let tld: [String]?
    let cca2, ccn3, cca3, cioc: String?
    let independent: Bool?
    let status: Status?
    let unMember: Bool?
    let idd: Idd?
    let capital, altSpellings: [String]?
    let region: Region?
    let subregion: String?
    let languages: [String: String]?
    let translations: [String: Translation]?
    let latlng: [Double]?
    let landlocked: Bool?
    let borders: [String]?
    let area: Double?
    let flag: String?
    let maps: Maps?
    let population: Int?
    let gini: [String: Double]?
    let fifa: String?
    let car: Car?
    let timezones: [String]?
    let continents: [Continent]?
    let flags: Flags?
    let coatOfArms: CoatOfArms?
    let startOfWeek: StartOfWeek?
    let capitalInfo: CapitalInfo?
    let postalCode: PostalCode?
}

// MARK: - CapitalInfo
struct CapitalInfo: Codable {
    let latlng: [Double]?
}

// MARK: - Car
struct Car: Codable {
    let signs: [String]?
    let side: Side?
}

enum Side: String, Codable {
    case sideLeft = "left"
    case sideRight = "right"
}

// MARK: - CoatOfArms
struct CoatOfArms: Codable {
    let png: String?
    let svg: String?
}

enum Continent: String, Codable {
    case africa = "Africa"
    case antarctica = "Antarctica"
    case asia = "Asia"
    case europe = "Europe"
    case northAmerica = "North America"
    case oceania = "Oceania"
    case southAmerica = "South America"
}

// MARK: - Flags
struct Flags: Codable {
    let png: String?
    let svg: String?
    let alt: String?
}

// MARK: - Idd
struct Idd: Codable {
    let root: String?
    let suffixes: [String]?
}

// MARK: - Maps
struct Maps: Codable {
    let googleMaps, openStreetMaps: String?
}

// MARK: - Name
struct Name: Codable {
    let common, official: String?
    let nativeName: [String: Translation]?
}

// MARK: - Translation
struct Translation: Codable {
    let official, common: String?
}

// MARK: - PostalCode
struct PostalCode: Codable {
    let format, regex: String?
}

enum Region: String, Codable {
    case africa = "Africa"
    case americas = "Americas"
    case antarctic = "Antarctic"
    case asia = "Asia"
    case europe = "Europe"
    case oceania = "Oceania"
}

enum StartOfWeek: String, Codable {
    case monday = "monday"
    case saturday = "saturday"
    case sunday = "sunday"
}

enum Status: String, Codable {
    case officiallyAssigned = "officially-assigned"
    case userAssigned = "user-assigned"
}

