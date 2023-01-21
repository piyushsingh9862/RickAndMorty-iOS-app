//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Piyush Singh on 20/01/23.
//

import Foundation

/// Object that represents a single API Call
final class RMRequest {
    
    /// API constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoints
    private let endpoint: RMEndpoint
    
    /// Path Component for the API,if any
    private let pathComponent: Set<String> 
    
    /// Query Parameters for the API,if any
    private let queryParameter: [URLQueryItem]
    
    /// Constructed URL  for the api request in the string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string  += endpoint.rawValue
        
        if !pathComponent.isEmpty{
            pathComponent.forEach({
                string += "/\($0)"
            })
                
        }
        
        
        if !queryParameter.isEmpty{
            string += "?"
            //name=value&name=value
            let argumentString = queryParameter.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
                
            string += argumentString
        }
        
        
        return string
        
    }
    
    /// Computed and Constructed API url
    public var url: URL?{
        return URL(string: urlString )
    }
    
    /// Desired HTTP method
    public let httpMethod = "GET"
    
    /// Construct Request
    /// - Parameters:
    ///   - endpoint: Target Endpoint
    ///   - pathComponent: Collection of path Components
    ///   - queryParameter: Collection of Query Parameters
    init(
        endpoint: RMEndpoint,
        pathComponent: Set<String> = [],
        queryParameter: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponent = pathComponent
        self.queryParameter = queryParameter
    }
}



