//
//  ContentView.swift
//  CountryApp
//
//  Created by Derya Antonelli on 06/10/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var countries = Countries()
    
    var body: some View {
        NavigationView {
            List(countries.countries) { country in
                NavigationLink {
                    DetailView()
                } label: {
                    Text("\(country.name)")
                }
                
            }
            .navigationTitle("Countries")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
