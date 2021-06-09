//
//  ContentView.swift
//  WWDC-AsyncImage
//
//  Created by Ionut Dirlea on 09.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2016/11/22/23/14/terrier-1851108_1280.jpg")) { image in
            image
                .resizable()
                .scaledToFit()
                .mask(RoundedRectangle(cornerRadius: 20))
                .padding()
        } placeholder: {
            Text("Loading image...")
        }
            
    }
}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
