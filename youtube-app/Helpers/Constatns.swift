//
//  Constatns.swift
//  youtube-app
//
//  Created by Алишер Алсейт on 03.12.2020.
//

import Foundation

struct Constants {
    
    static var API_KEY = ""
    static var PLAYLIST_ID = "UUQ8hcw49Dyv0TSSEBgrDzAw"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"

    static var YT_EMBED_URL = "https://www.youtube.com/embed/"
    
    static var VIDEOCELL_ID = "VideoCell"
}
