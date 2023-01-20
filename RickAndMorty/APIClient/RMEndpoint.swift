//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Piyush Singh on 20/01/23.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get Character Info
    case character
    /// Endpoint to get location Info
    case location
    ///endpoint to get episode I nfo
    case episode
}
