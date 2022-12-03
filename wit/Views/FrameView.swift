//
//  FrameView.swift
//  whatisthis
//
//  Created by Paulo Mendes on 12/11/2022.
//

import SwiftUI

struct FrameView: View {
    var image: CGImage?
    private let label = Text("frame")
    
    var body: some View {
        if let image = image {
            Image(image, scale: 2.0, orientation: .up, label: label)
                .frame(width: 400, height: 700, alignment: .topLeading)
        } else {
            Color.pink
                .frame(width: 400, height: 700, alignment: .topLeading)

        }
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
