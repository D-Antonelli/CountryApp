//
//  ModelView.swift
//  CountryApp
//
//  Created by Derya Antonelli on 13/10/2022.
//

import Foundation

class Countries: ObservableObject {
    @Published var countries = [Country]()
    
    init() {
        apiCall().loadData { countries in
            self.countries = countries
        }
    }
}
