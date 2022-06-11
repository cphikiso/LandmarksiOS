//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Chimwemwe Phikiso on 12/06/2022.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
            
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
    }
}
