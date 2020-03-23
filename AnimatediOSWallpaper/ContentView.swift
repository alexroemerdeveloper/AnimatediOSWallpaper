//
//  ContentView.swift
//  AnimatediOSWallpaper
//
//  Created by Alexander Römer on 23.03.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var shiftColors = false
    
    var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "maria"))
                .resizable()
                .scaledToFill()
                .hueRotation(.degrees(shiftColors ? 45 : 1600))
                .animation(Animation.easeInOut(duration: 5).repeatForever(autoreverses: true))
                .onAppear() {
                    self.shiftColors.toggle()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
