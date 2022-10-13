//
//  Countries.swift
//  CountryApp
//
//  Created by Derya Antonelli on 06/10/2022.
//

import Foundation

class apiCall {
    func loadData(completion: @escaping ([Country]) -> ()) {
        guard let url = URL(string: "https://restcountries.com/v2/all?fields=name") else {
            print("Invalid URL")
            return
        }
        
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            if let data = try? JSONDecoder().decode([Country].self, from: data!) {
                
                DispatchQueue.main.async {
                    completion(data)
                }
            }
        }
        .resume()
    }
    
}
