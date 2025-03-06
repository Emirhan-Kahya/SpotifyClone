//
//  Product.swift
//  Spotify-Rebuild
//
//  Created by Emirhan Kahya on 4.03.2025.
//

import Foundation

struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let price, discountPercentage, rating: Double
    let stock: Int
    let brand, category: String?
    let images: [String]
    let thumbnail: String
}

