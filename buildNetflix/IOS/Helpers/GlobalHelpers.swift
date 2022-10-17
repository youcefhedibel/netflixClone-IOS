//
//  GlobalHelpers.swift
//  buildNetflix
//
//  Created by mac on 11/9/2022.
//

import Foundation
import SwiftUI

let exampleVideoURL: URL = URL(string: "https://www.youtube.com/watch?v=YQf4Hfr8gWA&list=PLuoeXyslFTuZRi4q4VT6lZKxYbr7so1Mr&index=29")!


let exampleImageURL = URL(string: "https://picsum.photos/300/184")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageURL: URL {
  return  [exampleImageURL,exampleImageURL2,exampleImageURL3].randomElement() ?? randomExampleImageURL
}


let exampleTrailer1 = Trailer(name: "Saison 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "The hero's journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "The mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)


let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

//MARK: Example Movie

let examplemovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK" ,
    thumbnailURL: URL(string: "https://picsum.photos/200/309")!,
    categories: ["Comedy", "Science", "Drama", "Watch it again", "New releases"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeason: 3,
    defaultEpisode: exampleEpisodeInfo1,
    creator: "Barab bo Boran",
    cast: "Louis Hosman, Oliver Massousi",
    moreLikeThisMovie: exampleMovies,
    episodes: allExampleEpisodes,
    promotionHeadline: "Whatch Season 6 NOW !",
    trailers: exampleTrailers
)

let examplemovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers" ,
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Comedy", "Science", "Drama", "Watch it again", "New releases"] ,
    year: 2020,
    rating: "TV-MA",
    numberOfSeason: 4,
    defaultEpisode: exampleEpisodeInfo1,
    creator: "Barab bo Boran",
    cast: "Louis Hosman, Oliver Massousi",
    moreLikeThisMovie: [],
    trailers: exampleTrailers
)

let examplemovie3 = Movie(
    id: UUID().uuidString,
    name: "Comunity" ,
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Comedy", "Science", "Drama", "Watch it again", "New releases"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeason: 5,
    defaultEpisode: exampleEpisodeInfo1,
    creator: "Barab bo Boran",
    cast: "Louis Hosman, Oliver Massousi",
    moreLikeThisMovie: [],
    trailers: exampleTrailers
)

let examplemovie4 = Movie(
    id: UUID().uuidString,
    name: "After line" ,
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Comedy", "Science", "Drama", "Watch it again", "New releases"] ,
    year: 2020,rating: "TV-MA",
    numberOfSeason: 6,
    defaultEpisode: exampleEpisodeInfo1,
    creator: "Barab bo Boran",
    cast: "Louis Hosman, Oliver Massousi",
    moreLikeThisMovie: [],
    trailers: exampleTrailers
)

let examplemovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal" ,
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Comedy", "Science", "Drama", "Watch it again", "New releases"] ,
    year: 2020,
    rating: "TV-MA",
    numberOfSeason: 10,
    defaultEpisode: exampleEpisodeInfo1,
    creator: "Barab bo Boran",
    cast: "Louis Hosman, Oliver Massousi",
    moreLikeThisMovie: [],
    promotionHeadline: "Whatch Season 6 NOW !",
    trailers: exampleTrailers
)

let examplemovie6 = Movie(
    id: UUID().uuidString,
    name: "Alone" ,
    thumbnailURL: URL(string: "https://picsum.photos/200/307")!,
    categories: ["Comedy", "Science", "Drama"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeason: 3,
    defaultEpisode: exampleEpisodeInfo1,
    creator: "Barab bo Boran",
    cast: "Louis Hosman, Oliver Massousi",
    moreLikeThisMovie: [],
    promotionHeadline: "Whatch Season 6 NOW !",
    trailers: exampleTrailers
)
let examplemovie7 = Movie(
    id: UUID().uuidString,
    name: "Alone" ,
    thumbnailURL: URL(string: "https://picsum.photos/200/307")!,
    categories: ["Comedy", "Science", "Drama"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeason: 3,
    defaultEpisode: exampleEpisodeInfo1,
    creator: "Barab bo Boran",
    cast: "Louis Hosman, Oliver Massousi",
    moreLikeThisMovie: [],
    promotionHeadline: "Whatch Season 6 NOW !",
    trailers: exampleTrailers
)
var exampleMovies : [Movie] {
    [ examplemovie2, examplemovie3, examplemovie4, examplemovie5, examplemovie6, examplemovie7].shuffled()
}

//MARK: Example Episodes
let episode1 = Episode(
                       name: "Begining and ending",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/200/307",
                       description: "s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galle",
                       length: 140,
                       videoURL: exampleVideoURL)
let episode2 = Episode(
                       name: "Peacky blinders",
                       season: 1,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/200/307",
                       description: "s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galle",
                       length: 90,
                       videoURL: exampleVideoURL)
let episode3 = Episode(
                       name: "Dark Matter",
                       season: 1,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/200/307",
                       description: "s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galle",
                       length: 120,
                       videoURL: exampleVideoURL)
let episode4 = Episode(
                       name: "Ghost",
                       season: 4,
                       episodeNumber: 4,
                       thumbnailImageURLString: "https://picsum.photos/200/307",
                       description: "s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galle",
                       length: 60,
                       videoURL: exampleVideoURL)

let allExampleEpisodes = [episode1 ,episode2 ,episode3 ,episode4]



let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Bgining and ending",
                                             description: "s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.",
                                             season: 1,
                                             episode: 2) 


extension LinearGradient{
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.90)]),startPoint: .top, endPoint:.bottom)
}

extension String{
    func widthOfString(usingFont font:UIFont) -> CGFloat {
        
        let fontAtributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAtributes)
        return size.width
        
    }
}
