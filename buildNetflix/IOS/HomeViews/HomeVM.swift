//
//  HomeVM.swift
//  buildNetflix
//
//  Created by mac on 11/9/2022.
//

import Foundation

class HomeVM : ObservableObject{
    
    // String == Category Name
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map( {String($0)})
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trendining Now"] = exampleMovies
        movies["Comedy"] = exampleMovies.shuffled()
        movies["New releases"] = exampleMovies.shuffled()
        movies["Watch it again"] = exampleMovies.shuffled()
        movies["Science"] = exampleMovies.shuffled()
        movies["Drama"] = exampleMovies.shuffled()
        
    }
    
    func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
}

