//
//  Photo.swift
//  NomairMustafaHW7
//
//  Created by Student on 3/31/25.
//

import SwiftUI

struct PhotoUrl: Decodable, Hashable {
    let raw: String //Represents a base image URL with just the photo path
    let full: String //Represents a photo in jpg format with its maximum dimensions
    let regular: String //Represents a photo in jpg format with a width of 1080 pixels
    let small: String //Represents a  photo in jpg format with a width of 400 pixels
    let thumb: String //Represents a photo in jpg format with a width of 200 pixels
}

struct Photo: Decodable, Hashable {
    let id: String
    let urls: PhotoUrl
}
