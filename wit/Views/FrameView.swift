//
//  FrameView.swift
//  whatisthis
//
//  Created by Paulo Mendes on 12/11/2022.
//

import SwiftUI

struct FrameView: View {
    var image: CGImage?

    var body: some View {
        if let image = image {
            Image(decorative: image, scale: 2.0)
                //.scaledToFit()
        } else {
            Image("defaultImage")
                .scaledToFit()
        }
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
