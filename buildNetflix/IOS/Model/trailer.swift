//
//  trailer.swift
//  buildNetflix
//
//  Created by mac on 25/9/2022.
//

import Foundation

struct Trailer: Identifiable, Hashable{
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
