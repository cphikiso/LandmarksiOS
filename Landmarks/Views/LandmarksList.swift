//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Chimwemwe Phikiso on 12/06/2022.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                }
            label: {LandmarkRow(landmark: landmark)}
                
            }
            .navigationTitle("Landmarks")
        }
        
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 13 mini", "iPhone 13 Pro"], id: \.self) { deviceName in
            LandmarksList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
