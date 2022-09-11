//
//  StandardHomeMovie.swift
//  buildNetflix
//
//  Created by mac on 11/9/2022.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    var movie : Movie
    var body: some View {
        VStack {
            KFImage(movie.thumbnailURL)
                .resizable()
            .scaledToFill()
           
        }
       
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: examplemovie1)
            
    }
}
