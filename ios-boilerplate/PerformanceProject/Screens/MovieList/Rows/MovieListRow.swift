//
//  MovieListRow.swift
//  SwiftUICourseLandmarkProject
//
//  Created by msait on 13.04.2020.
//  Copyright © 2020 Mustafa Sait Demirci. All rights reserved.
//

import SwiftUI

struct MovieListRow: View {
    var movie: Result
    var body: some View {
        HStack(alignment: .center) {
            Text(movie.title ?? "")
            // swiftlint:disable:next line_length
            NavigationLink.init("", destination: MovieDetailView(movieDetailViewModel: MovieDetailViewModel(with: movie.movieId ?? 0)))
        }
    }
}

struct MovieListRow_Previews: PreviewProvider {
    static var previews: some View {
        // swiftlint:disable:next line_length
        let movie = Result(popularity: nil, voteCount: nil, video: nil, posterPath: "", movieId: nil, adult: nil, backdropPath: nil, originalLanguage: nil, originalTitle: nil, genreIDS: nil, title: "Movie Title", voteAverage: nil, overview: nil, releaseDate: nil)
        return MovieListRow(movie: movie)
    }
}
