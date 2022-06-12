//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Chimwemwe Phikiso on 12/06/2022.
//

import SwiftUI

struct LandmarksList: View {
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
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
            LandmarksList()
    }
}
