//
//  ContentView.swift
//  CountryApp
//
//  Created by Derya Antonelli on 06/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State var countries = [Country]()
    
    var body: some View {
        NavigationView {
            List(countries) { country in
                Text(country.name)
            }
        }
        .onAppear() {
            apiCall().loadData { countries in
                self.countries = countries
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
