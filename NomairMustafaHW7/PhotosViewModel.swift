//
//  PhotosViewModel.swift
//  NomairMustafaHW7
//
//  Created by Student on 4/4/25.
//

import SwiftUI

class PhotosViewModel: ObservableObject {
    let BASE_URL: String = "https://api.unsplash.com"
    let ACCESS_KEY: String = "MCh6Bi47ifZiKch-s_NHUrs8tQqyAjnnQZc_LO_qCuU"
    let PHOTOS_COUNT: Int = 20
    @Published var isLoading = false
    @Published var photos: [Photo] = []
    
    func refresh() async {
        let url = URL(string: "\(BASE_URL)/photos/random?count=\(PHOTOS_COUNT)")!
        var request = URLRequest(url: url)
        request.setValue("Client-ID \(ACCESS_KEY)", forHTTPHeaderField: "Authorization")
        
        do {
            isLoading = true
            let (data, response) = try await URLSession.shared.data(for: request)
            
            let decoder = JSONDecoder();
            let photosDecoded = try decoder.decode([Photo].self, from: data)
            self.photos = photosDecoded
            
            isLoading = false
            //image URL?
            print(data)
            print(photosDecoded)
            print(response)
        } catch {
            print(error)
        }
    }
}
