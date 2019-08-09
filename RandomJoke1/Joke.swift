//
//  Joke.swift
//  RandomJoke1
//
//  Created by Teerapat on 9/8/2562 BE.
//  Copyright © 2562 Teerapat. All rights reserved.
//

import Foundation

struct Joke: Codable { 
    let id: String
    let value: String
    let iconURL: String
    let url: String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case value
        case url
        case iconURL = "icon_url"
    }
}
