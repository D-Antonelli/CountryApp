//
//  DetailView.swift
//  CountryApp
//
//  Created by Derya Antonelli on 13/10/2022.
//

import SwiftUI

struct DetailView: View {
    let country: Country
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Capital")
                Text("\(country.unwrappedCapital)")
            }
        }
        
        .navigationTitle("\(country.name)").navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(country: Country(name: "Wonderland", capital: "Wonder city", population: 1, denonym: "Wonder", flags: Country.Flag(png: URL(string: "www.flag.com")!), currencies: [Country.Currency(name: "WDL")]))
    }
}
