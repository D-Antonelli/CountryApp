//
//  ContentView.swift
//  CountryApp
//
//  Created by Derya Antonelli on 06/10/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var countries = Countries()
    
    var body: some View {
        NavigationView {
            Text("Loading")
            List(countries.countries) { country in
                Text(country.name)
            }
            .task {
                await countries.loadData()
            }
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
