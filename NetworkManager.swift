//
//  NetworkManager.swift
//  JImage
//
//  Created by J on 2023/03/09.
//

import Foundation

open class NetworkManager {
    public static let shared = NetworkManager()
    
    public init() { }
    
    public func setImage(with urlString: String, completion: @escaping (UIImage) -> Void) {
        if let cachedImage = ImageCacheManager.shared.loadImage(url: urlString) {
            completion(cachedImage)
            return
        }
        guard let url = URL(string: urlString) else { return }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let response = response as? HTTPURLResponse, response.statusCode == 200,
                  let data = data, error == nil,
                  let image = UIImage(data: data)
            else { return }
            
            ImageCacheManager.shared.setImage(url: urlString, image: image)
            
            completion(image)
        }.resume()
    }
}
