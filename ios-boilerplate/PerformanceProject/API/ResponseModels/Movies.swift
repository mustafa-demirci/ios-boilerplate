//
//  Leagues.swift
//  SwiftUICourseLandmarkProject
//
//  Created by msait on 11.04.2020.
//  Copyright © 2020 Mustafa Sait Demirci. All rights reserved.
//

import Foundation

// MARK: - Movies
struct Movies: Codable {
    var page, totalResults, totalPages: Int?
    var results: [Result]?

    enum CodingKeys: String, CodingKey {
        case page
        case totalResults = "total_results"
        case totalPages = "total_pages"
        case results
    }
}

// MARK: - Result
struct Result: Codable {
    var popularity: Double?
    var voteCount: Int?
    var video: Bool?
    var posterPath: String?
    var movieId: Int?
    var adult: Bool?
    var backdropPath: String?
    var originalLanguage: OriginalLanguage?
    var originalTitle: String?
    var genreIDS: [Int]?
    var title: String?
    var voteAverage: Double?
    var overview, releaseDate: String?

    enum CodingKeys: String, CodingKey {
        case popularity
        case voteCount = "vote_count"
        case video
        case posterPath = "poster_path"
        case movieId = "id"
        case adult
        case backdropPath = "backdrop_path"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case genreIDS = "genre_ids"
        case title
        case voteAverage = "vote_average"
        case overview
        case releaseDate = "release_date"
    }
}

// OriginalLanguage.swift

enum OriginalLanguage: String, Codable {
    case enLang = "en"
    case plLang = "pl"
    case tlLang = "tl"
}
