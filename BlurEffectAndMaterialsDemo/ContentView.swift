//
//  ContentView.swift
//  BlurEffectAndMaterialsDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: "https://picsum.photos/600")) {
                image in
                
                image
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 6, opaque: true)
            } placeholder: {
                Color.gray.opacity(0.2)
                    .overlay(ProgressView())
            }
            .edgesIgnoringSafeArea(.all)
            Text("Hello, world!")
                .fontWeight(.black)
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
