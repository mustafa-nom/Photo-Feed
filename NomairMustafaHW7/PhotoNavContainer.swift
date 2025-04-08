//
//  PhotoNavContainer.swift
//  NomairMustafaHW7
//
//  Created by Student on 4/6/25.
//

import SwiftUI

struct PhotoNavContainer: View {
    let photos: PhotosViewModel = PhotosViewModel()
    var body: some View {
        NavigationStack {
            PhotoGridPage(photosViewModel: photos)
                .navigationDestination(for: Photo.self) { photo in
                    PhotoDetailPage(photo: photo)
                }
        }
    }
}

#Preview {
    PhotoNavContainer()
}
