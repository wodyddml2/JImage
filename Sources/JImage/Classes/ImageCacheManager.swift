//
//  ImageCacheManager.swift
//  JImage
//
//  Created by J on 2023/03/09.
//

import UIKit

open class ImageCacheManager {
    public static let shared = ImageCacheManager()
    
    public init() { }
    
    public let storage = NSCache<NSString, UIImage>()
    
    public func loadImage(url: String) -> UIImage? {
        let key = NSString(string: url)
        if let cachedImage = storage.object(forKey: key) {
            return cachedImage
        }
        return nil
    }
    
    public func setImage(url: String, image: UIImage) {
        let key = NSString(string: url)
        storage.setObject(image, forKey: key)
    }
}
