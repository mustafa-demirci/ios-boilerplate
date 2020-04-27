//
//  WebService.swift
//  SwiftUICourseLandmarkProject
//
//  Created by msait on 11.04.2020.
//  Copyright © 2020 Mustafa Sait Demirci. All rights reserved.
//

import Foundation

protocol WebService {
    func getPopularMovies(completed:@escaping (Movies?) -> Void)
    func getMovieDetails(with movieId: Int, completed:@escaping (MovieDetails?) -> Void)
}
public enum HttpMethods: String {
    case get = "GET"
    case post = "POST"
}
struct EndPoints {
    static var getPopularMoviesEndpoint = "/3/movie/popular"
    static var getMovieDetailEndPoint = "/3/movie/%@"
}
class API: WebService {
    static let shared = API()
    private init() {}
    let session = URLSession.shared
    func getPopularMovies(completed:@escaping (Movies?) -> Void) {
        let endpoint = EndPoints.getPopularMoviesEndpoint
        self.request(with: Movies.self,
                     with: RequestBuilder.shared.buildRequest(httpMethod: .get,
                                                              endpoint: endpoint)) {(responseModel) in
            completed(responseModel)
        }
    }
    func getMovieDetails(with movieId: Int, completed:@escaping (MovieDetails?) -> Void) {
        let endpoint = EndPoints.getMovieDetailEndPoint.replacingOccurrences(of: "%@",
                                                                             with: String(movieId))
        self.request(with: MovieDetails.self,
                     with: RequestBuilder.shared.buildRequest(httpMethod: .get,
                                                              endpoint: endpoint)) {(responseModel) in
            completed(responseModel)
        }
    }
    func request<T: Codable>(with responseModel: T.Type ,
                             with urlRequest: URLRequest,
                             completed:@escaping (T?) -> Void) {
        let dataTask = session.dataTask(with: urlRequest, completionHandler: { (data, _, _) -> Void in
            if let data = data {
                print(String(data: data, encoding: .utf8) ?? "")
                completed(try? JSONDecoder().decode(T.self, from: data))
            }
        })
        dataTask.resume()
    }
}
