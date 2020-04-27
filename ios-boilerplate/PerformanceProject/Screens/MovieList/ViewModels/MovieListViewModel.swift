//
//  LeagueListViewModel.swift
//  SwiftUICourseLandmarkProject
//
//  Created by msait on 12.04.2020.
//  Copyright © 2020 Mustafa Sait Demirci. All rights reserved.
//

import Combine
import Foundation
class MovieListViewModel: ObservableObject {
    @Published var movies = [MovieRowViewModel]()
    init() {
        API.shared.getPopularMovies(completed: { (movies) in
            if let movies = movies?.results {
                DispatchQueue.main.async {
                    self.movies = movies.map(MovieRowViewModel.init)
                }
            }
        })
    }

}
