//
//  ImageStore.swift
//  Homepwner
//
//  Created by Matthew Watzman on 7/23/17.
//  Copyright © 2017 Matthew Watzman. All rights reserved.
//

import UIKit

class ImageStore {
    let cache = NSCache<NSString,UIImage>();
    
    func setImage(_ image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key as NSString)
    }
    
    func image(forKey key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
    
    func deleteImage(forKey key: String) {
        cache.removeObject(forKey: key as NSString)
    }
    
    func imageURL(forKey key: String) -> URL {
        let documentsDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.appendingPathComponent(key)
    }
}
