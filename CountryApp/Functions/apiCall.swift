//
//  Countries.swift
//  CountryApp
//
//  Created by Derya Antonelli on 06/10/2022.
//

import Foundation

class apiCall {
    func loadData(completion: @escaping ([Country]) -> ()) {
        guard let url = URL(string: "https://restcountries.com/v2/all") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else {
                print("data not found")
                return
            }
            
            if let error = error {
                print(error)
                return
            }
            
            do {
                let data = try JSONDecoder().decode([Country].self, from: data)
                  
                    DispatchQueue.main.async {
                        completion(data)
                    }
                
            } catch {
                print(error)
            }
            
        }
        .resume()
    }
    
}
