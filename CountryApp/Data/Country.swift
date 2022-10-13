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
    let capital: String?
    let population: Int
    let denonym: String?
    let flags: Flag
    let currencies: [Currency]?
    
    var unwrappedCapital: String {
        return capital ?? "Unknown"
    }
    
    var unwrappedDenonym: String {
        return denonym ?? "Unknown"
    }
    
    var unwrappedCurrencies: [Currency] {
        return currencies ?? [Currency(name: "Unknown")]
    }
    
    struct Flag: Decodable {
        let png: URL
    }
    
    struct Currency: Decodable {
        let name: String
    }
    
    private enum CodingKeys: String, CodingKey {
        case name, capital, population, denonym, flags, currencies
    }
    
}
