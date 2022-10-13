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
            ScrollView {
                VStack(alignment: .center) {
                    AsyncImage(url: country.flags.png) { image in
                        image.resizable()
                            .scaledToFit()
                            .padding(.top)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(maxWidth: geometry.size.width * 0.5)
                    
                    Text("\(country.name)")
                        .font(.title2)
                        .padding(.top)
                        .foregroundColor(.secondary)
                    
                    Divider()
                        .padding(.bottom)
                    
                    Text("Capital")
                        .font(.title.bold())
                    Text("\(country.unwrappedCapital)")
                        .padding(.bottom)
                    
                    Text("Population")
                        .font(.title.bold())
                    Text("\(country.population)")
                        .padding(.bottom)
                    
                   
                    
                }
            }
            
            
        }
        .navigationTitle("\(country.name)")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(country: Country(name: "Wonderland", capital: "Wonder city", population: 1, denonym: "Wonder", flags: Country.Flag(png: URL(string: "https://flagcdn.com/w320/ax.png")!), currencies: [Country.Currency(name: "WDL")]))
    }
}
