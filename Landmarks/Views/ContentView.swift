//
//  ContentView.swift
//  Landmarks
//
//  Created by Chimwemwe Phikiso on 10/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
                
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                       
                    Spacer()
                    Text("California")
                        
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About The Forest Days")
                    .font(.title2)
            }
            .padding()
            Spacer()
                
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
