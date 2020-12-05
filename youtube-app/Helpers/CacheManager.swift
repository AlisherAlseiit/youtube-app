//
//  CacheManager.swift
//  youtube-app
//
//  Created by Алишер Алсейт on 05.12.2020.
//

import Foundation

class CacheManager{
    
    static var cache = [String:Data]()
    
    static func setVideoCache(_ url:String, _ data:Data?) {
        
        cache[url] = data
    }
    
    static func getVideoCache(_ url:String) -> Data? {
            
        return cache[url]
    }
    
}
