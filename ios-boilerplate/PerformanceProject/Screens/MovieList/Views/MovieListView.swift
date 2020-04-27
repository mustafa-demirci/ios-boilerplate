//
//  LandingView.swift
//  SwiftUICourseLandmarkProject
//
//  Created by msait on 11.04.2020.
//  Copyright © 2020 Mustafa Sait Demirci. All rights reserved.
//

import SwiftUI
import Combine

struct MovieListView: View {
    @ObservedObject var movieListModel: MovieListViewModel
    var body: some View {
        NavigationView.init {
            List(movieListModel.movies) { movie in
                MovieListRow(movie: movie.movie)
                }.navigationBarTitle("Movies")
        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(movieListModel: MovieListViewModel())
    }
}
