//
//  ContentView.swift
//  whatisthis
//
//  Created by Paulo Mendes on 05/11/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = FrameHandler()
    let screenSize: CGRect = UIScreen.main.bounds

    var body: some View {
        ZStack {
                FrameView(image: model.frame)
                Spacer()
                Text(model.prediction)
                    .fontWeight(.bold)
                    .font(.system(size: 36))
                    .offset(x: 0, y: screenSize.height / 2 - 80)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
