//
//  LeagueViewModel.swift
//  SwiftUICourseLandmarkProject
//
//  Created by msait on 12.04.2020.
//  Copyright © 2020 Mustafa Sait Demirci. All rights reserved.
//

import Foundation

class MovieRowViewModel: Identifiable {
    let vmId = UUID()
    var movie: Result
    init(movie: Result) {
        self.movie = movie
    }
    var movieName: String {
        return self.movie.title ?? ""
    }
}
