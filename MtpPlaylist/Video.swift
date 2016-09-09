//
//  Video.swift
//  MtpPlaylist
//
//  Created by Khoa on 8/11/16.
//  Copyright © 2016 Khoa. All rights reserved.
//

import Foundation

class Video {
    private var _previewImage : String!
    private var _songName : String!
    private var _url : String
    
    var previewImage : String{
        get{
            return _previewImage
        }
    }
    var songName : String{
        get {
            return _songName
        }
    }
    var url : String{
        get {
            return _url
        }
    }
    init(songName : String, previewImage : String, url  : String) {
        _previewImage = previewImage
        _url = url
        _songName = songName
    }
}
