//
//  RMService.swift
//  RickMorty
//
//  Created by Rupak Das on 15/07/2024.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init() {}
    
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
