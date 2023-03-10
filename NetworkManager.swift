//
//  NetworkManager.swift
//  JImage
//
//  Created by J on 2023/03/09.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() { }
    
    func request(urlString: String) -> UIImage? {
        if let cachedImage = ImageCacheManager.shared.loadImage(url: urlString) {
            return cachedImage
        }
        guard let url = URL(string: urlString) else { return nil }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let response = response as? HTTPURLResponse, response.statusCode == 200,
                  let data = data, error == nil,
                  let image = UIImage(data: data)
            else { return }
            
            ImageCacheManager.shared.setImage(url: urlString, image: image)
            
        }
        
        return nil
    }
}
