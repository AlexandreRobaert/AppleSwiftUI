//
//  ContentView.swift
//  AppleSwiftUI
//
//  Created by Alexandre Robaert on 30/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList().environmentObject(ModelData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
