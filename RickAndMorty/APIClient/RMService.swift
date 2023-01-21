//
//  RMService.swift
//  RickAndMorty
//
//  Created by Piyush Singh on 20/01/23.
//

import Foundation


/// Primary API service object to get Rick and Morty Data
final class RMService {
    
    /// Shared singleton instance
    static let shared  = RMService()
    
    /// private constructor
    private init() {}
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        completion: @escaping (Result<T, Error> ) -> Void){
        
    }
    
    
}
