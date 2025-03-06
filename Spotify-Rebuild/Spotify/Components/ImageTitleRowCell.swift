//
//  ImageTitleRowCell.swift
//  Spotify-Rebuild
//
//  Created by Emirhan Kahya on 6.03.2025.
//

import SwiftUI

struct ImageTitleRowCell: View {

    var imageSize: CGFloat = 100
    var imageName: String = Constants.randomImage
    var title: String = "Some item name"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ImageLoaderView(urlString: imageName)
                .frame(width: imageSize, height: imageSize)
            
            Text(title)
                .font(.callout)
                .foregroundStyle(.spotifyLightGray)
                .lineLimit(2)
        }
        .frame(width: imageSize)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ImageTitleRowCell()
    }
}
