//
//  PhotoGridPage.swift
//  NomairMustafaHW7
//
//  Created by Student on 4/4/25.
//

import SwiftUI

struct PhotoGridPage: View {
    @StateObject var photosViewModel: PhotosViewModel
    @State var viewDidLoad: Bool = false
    let items: [GridItem] = [
        GridItem(.flexible(minimum: 120)),
        GridItem(.flexible(minimum: 120))]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            if photosViewModel.isLoading {
                ProgressView()
            } else {
                LazyVGrid(columns: items, spacing: 10) {
                    ForEach(photosViewModel.photos, id: \.self) { photo in
                        PhotoCell(photo: photo)
                    }
                }
                .padding()
            }
        }
        .task {
            if !viewDidLoad {
                viewDidLoad = true
                await photosViewModel.refresh()
            }
        }
        .navigationTitle("Unsplash Feed")
        .toolbar {
            Button {
                Task {
                    await photosViewModel.refresh()
                }
            } label: {
                Image(systemName: "arrow.clockwise")
            }

        }
    }
}

#Preview {
    PhotoGridPage(photosViewModel: PhotosViewModel())
}
