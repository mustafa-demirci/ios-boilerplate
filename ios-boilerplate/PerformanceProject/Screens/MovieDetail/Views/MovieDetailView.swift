//
//  LeagueRankView.swift
//  SwiftUICourseLandmarkProject
//
//  Created by msait on 12.04.2020.
//  Copyright © 2020 Mustafa Sait Demirci. All rights reserved.
//

import SwiftUI
struct MovieDetailView: View {
    @ObservedObject var movieDetailViewModel: MovieDetailViewModel
    var body: some View {
        Text(movieDetailViewModel.movieDetail?.title ?? "").onAppear {
            self.movieDetailViewModel.getMovieDetail()
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movieDetailViewModel: MovieDetailViewModel(with: 1))
    }
}
