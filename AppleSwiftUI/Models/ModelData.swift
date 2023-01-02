//
//  ModelData.swift
//  AppleSwiftUI
//
//  Created by Alexandre Robaert on 01/01/23.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ fileName: String) -> T {
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("Não foi possível encontrar o arquivo.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Não foi possível carregar o arquivo")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Não foi possível converter o arquivo \(fileName) em \(T.self): \n\(error)")
    }
}
