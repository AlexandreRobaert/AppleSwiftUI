//
//  LandmarkRow.swift
//  AppleSwiftUI
//
//  Created by Alexandre Robaert on 01/01/23.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        List {
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
