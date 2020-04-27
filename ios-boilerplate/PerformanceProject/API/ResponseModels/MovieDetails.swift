//
//  MovieDetails.swift
//  SwiftUICourseLandmarkProject
//
//  Created by msait on 12.04.2020.
//  Copyright © 2020 Mustafa Sait Demirci. All rights reserved.
//

import Foundation

// MARK: - MovieDetails
struct MovieDetails: Codable {
    var adult: Bool?
    var backdropPath: String?
    var belongsToCollection: BelongsToCollection?
    var budget: Int?
    var genres: [Genre]?
    var homepage: String?
    var movieId: Int?
    var imdbID, originalLanguage, originalTitle, overview: String?
    var popularity: Double?
    var posterPath: String?
    var productionCompanies: [ProductionCompany]?
    var productionCountries: [ProductionCountry]?
    var releaseDate: String?
    var revenue, runtime: Int?
    var spokenLanguages: [SpokenLanguage]?
    var status, tagline, title: String?
    var video: Bool?
    var voteAverage: Double?
    var voteCount: Int?

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case belongsToCollection = "belongs_to_collection"
        case budget, genres, homepage
        case movieId = "id"
        case imdbID = "imdb_id"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case productionCompanies = "production_companies"
        case productionCountries = "production_countries"
        case releaseDate = "release_date"
        case revenue, runtime
        case spokenLanguages = "spoken_languages"
        case status, tagline, title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
// MARK: - BelongsToCollection
struct BelongsToCollection: Codable {
    var belongToCollectionId: Int?
    var name, posterPath, backdropPath: String?

    enum CodingKeys: String, CodingKey {
        case belongToCollectionId = "id"
        case name
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
    }
}
// MARK: - Genre
struct Genre: Codable {
    var genreId: Int?
    var name: String?
    enum CodingKeys: String, CodingKey {
        case genreId = "id"
    }
}
// MARK: - ProductionCompany
struct ProductionCompany: Codable {
    var productionCompanyId: Int?
    var logoPath: String?
    var name, originCountry: String?

    enum CodingKeys: String, CodingKey {
        case productionCompanyId = "id"
        case logoPath = "logo_path"
        case name
        case originCountry = "origin_country"
    }
}

// MARK: - ProductionCountry
struct ProductionCountry: Codable {
    var isoCountry, name: String?

    enum CodingKeys: String, CodingKey {
        case isoCountry = "iso_3166_1"
        case name
    }
}

// MARK: - SpokenLanguage
struct SpokenLanguage: Codable {
    var isoCountry, name: String?

    enum CodingKeys: String, CodingKey {
        case isoCountry = "iso_639_1"
        case name
    }
}
