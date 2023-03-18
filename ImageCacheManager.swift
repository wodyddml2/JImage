//
//  ImageCacheManager.swift
//  JImage
//
//  Created by J on 2023/03/09.
//

import UIKit

final class ImageCacheManager {
    static let shared = ImageCacheManager()
    
    private init() { }
    
    private let storage = NSCache<NSString, UIImage>()
    
    func loadImage(url: String) -> UIImage? {
        let key = NSString(string: url)
        if let cachedImage = storage.object(forKey: key) {
            return cachedImage
        }
        return nil
    }
    
    func setImage(url: String, image: UIImage) {
        let key = NSString(string: url)
        storage.setObject(image, forKey: key)
    }
}
