//
//  Country.swift
//  CountryApp
//
//  Created by Derya Antonelli on 06/10/2022.
//

import Foundation

struct Country: Decodable, Identifiable {
    var id = UUID()
    let name: String
    let capital: String
    
    private enum CodingKeys: String, CodingKey {
        case name, capital
        }
    
}
