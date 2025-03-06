//
//  SpotifyCategoryCell.swift
//  Spotify-Rebuild
//
//  Created by Emirhan Kahya on 4.03.2025.
//

import SwiftUI

struct SpotifyCategoryCell: View {
    
    var title: String = "All"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 35)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
            .cornerRadius(16)
    }
}

#Preview {
    ZStack {
        Color.red.ignoresSafeArea()
        
        VStack(spacing: 40) {
            SpotifyCategoryCell(title: "first", isSelected: true)
            SpotifyCategoryCell(title: "second")
            SpotifyCategoryCell(title: "third")
        }
    }
}
