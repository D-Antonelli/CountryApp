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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
