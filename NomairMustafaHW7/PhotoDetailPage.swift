//
//  PhotoDetailPage.swift
//  NomairMustafaHW7
//
//  Created by Student on 4/6/25.
//

import SwiftUI

struct PhotoDetailPage: View {
    let photo: Photo
    var body: some View {
        PhotoDetailView(url: photo.urls.regular)
    }
}

#Preview {
    PhotoDetailPage(photo: Photo(
        id: "abc",
        urls: PhotoUrl(
            raw: "https://images.unsplash.com/photo-123",
            full: "https://images.unsplash.com/photo-123",
            regular: "https://images.unsplash.com/photo-123",
            small: "https://images.unsplash.com/photo-123",
            thumb: "https://images.unsplash.com/photo-123"
        )
    ))
}

