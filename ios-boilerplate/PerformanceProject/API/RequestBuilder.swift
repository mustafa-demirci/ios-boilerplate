//
//  RequestBuilder.swift
//  PerformanceProject
//
//  Created by msait on 27.04.2020.
//  Copyright © 2020 Mustafa Sait Demirci. All rights reserved.
//

import Foundation

class RequestBuilder {
    static let shared = RequestBuilder()
    private let host = "api.themoviedb.org"
    private let scheme = "https"
    private let headers = [
        "Content-Type": "application/json;charset=utf-8"
    ]
    private let apiKey = "4ca74987353daf8c9004276db7bd7579"

    func buildRequest(httpMethod: HttpMethods, endpoint: String) -> URLRequest {
        var urlComponents = URLComponents()
        urlComponents.scheme = scheme
        urlComponents.host = host
        urlComponents.path = endpoint
        urlComponents.queryItems = [URLQueryItem.init(name: "api_key", value: apiKey)]
        var request = URLRequest(url: urlComponents.url ?? URL.init(string: "")!,
                                 cachePolicy: .useProtocolCachePolicy,
                                 timeoutInterval: 10.0)
        request.httpMethod = httpMethod.rawValue
        request.allHTTPHeaderFields = headers
        return request
    }
}
