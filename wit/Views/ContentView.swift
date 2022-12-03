//
//  ContentView.swift
//  whatisthis
//
//  Created by Paulo Mendes on 05/11/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = FrameHandler()
        
    var body: some View {
        VStack {
            Spacer(minLength: 10)
            FrameView(image: model.frame)
            Spacer(minLength: 20)
            Text(model.prediction)
                .fontWeight(.bold)
                .font(.system(size: 36))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
