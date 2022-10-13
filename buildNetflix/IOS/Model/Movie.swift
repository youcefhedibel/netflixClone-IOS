//
//  Movie.swift
//  buildNetflix
//
//  Created by mac on 11/9/2022.
//

import Foundation

struct Movie: Identifiable {
    var id : String
    var name : String
    var thumbnailURL : URL
    var categories : [String]
    
    //MovieDetail View
    
    var year: Int
    var rating: String
    var numberOfSeason: Int?
    
    // Personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisode: CurrentEpisodeInfo
    
    var creator: String
    var cast: String
    
    var moreLikeThisMovie: [Movie]
    
    var episodes: [Episode]?
    var promotionHeadline: String?
    
    var trailers : [Trailer]
    
    var numberOfSeasonDisplay: String {
        if let num = numberOfSeason{
            if num == 1 {
                return "\(num) season"
            }
            else {
                return "\(num) seasons"
            }
        }
       return ""
    }
    
    var episodeInfoDisplay: String{
        if let current = currentEpisode{
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else{
            return "S\(defaultEpisode.season):E\(defaultEpisode.episode) \(defaultEpisode.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String{
        if let current = currentEpisode{
            return("\(current.description)")
        } else{
            return("\(defaultEpisode.description)")
        }
    }
}

struct CurrentEpisodeInfo: Hashable,Equatable{
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
