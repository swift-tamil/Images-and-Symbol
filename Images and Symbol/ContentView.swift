//
//  ContentView.swift
//  Images and Symbol
//
//  Created by python on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var shouldIBounce = false
    var body: some View {
        VStack {
            Image(.bellagio)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
            
            Image(systemName: "globe")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundColor(.blue)
                .symbolEffect(.pulse, options: .repeat(3))
            
            Image(systemName: "wifi")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundColor(.blue)
                .symbolEffect(.variableColor)
            
            Image(systemName: "wifi")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundColor(.blue)
                .symbolEffect(.variableColor.reversing)
            
            Image(systemName: "person.crop.circle.badge.plus")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundColor(.blue)
                .symbolRenderingMode(.multicolor)
                .symbolEffect(.bounce, value: shouldIBounce)
                .onTapGesture {
                    shouldIBounce.toggle()
                }
            
            Image(systemName: "cloud.sun.rain.fill")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.gray, .yellow, .mint)
//                .symbolRenderingMode(.multicolor)
                .symbolEffect(.bounce, value: shouldIBounce)
                .onTapGesture {
                    shouldIBounce.toggle()
                }
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
