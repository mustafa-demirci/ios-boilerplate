//
//  MovieDetailViewModel.swift
//  SwiftUICourseLandmarkProject
//
//  Created by msait on 12.04.2020.
//  Copyright © 2020 Mustafa Sait Demirci. All rights reserved.
//

import Combine
import Foundation
class MovieDetailViewModel: ObservableObject {
    @Published var movieDetail: MovieDetails?
    var movieId: Int
    init(with movieId: Int) {
        self.movieId = movieId
    }
    func getMovieDetail() {
        API.shared.getMovieDetails(with: movieId) { (movieDetails) in
            DispatchQueue.main.async {
                self.movieDetail = movieDetails
            }
        }
    }
}
