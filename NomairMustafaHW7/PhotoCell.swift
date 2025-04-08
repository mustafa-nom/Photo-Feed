//
//  PhotoCell.swift
//  NomairMustafaHW7
//
//  Created by Student on 4/4/25.
//

import SwiftUI

struct PhotoCell: View {
    let photo: Photo
    
    
    var body: some View {
        NavigationLink(value: photo) {
            AsyncImage(url: URL(string: photo.urls.regular)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 160)
                    .clipped()
            } placeholder: {
            }
        }
    }
}

#Preview {
    PhotoCell(photo: Photo(
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

