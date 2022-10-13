//
//  MovieDetails.swift
//  buildNetflix
//
//  Created by mac on 12/9/2022.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    @State private var showSeasonPicker = true
    @State private var selectedSeason = 1
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            ZStack {
                HStack{
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 28))
                    })
                   
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack{
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        MovieInfoSubheadline(movie: examplemovie6)
                        
                        if movie.promotionHeadline != nil {
                            Text(movie.promotionHeadline!)
                                .font(.headline)
                                .bold()
                                
                        }
                        PlayButton(text: "Play", imageName: "play.fill",backgoundColor: .red){
                            
                        }
                        .padding(.horizontal, 10)
                        
                        // Current episode information
                        CurrentEpisodeInformation(movie: movie)
                       
                        CastInfo(movie: movie)
                        HStack(spacing: 60){
                            SmallVerticalButton(text: "My list", isOnImage: "checkmark", isOffImage: "plus", isOn: true){

                            }
                            SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true){

                            }
                            SmallVerticalButton(text: "share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true){

                            }
                            Spacer()
                        }
                        .padding(.leading, 20)
                        
                      
                         
                    }
                    .padding(.horizontal, 10)
                   
                    
                }
                

                Spacer()
            }
            .foregroundColor(.white)
            if showSeasonPicker {
                Color.black.opacity(0)
                VStack{
//                    Spacer()
//                    Text("TESTING")
//                        .background(.red)
//                    Text("TESTING")
//                        .background(.red)
//                    Text("TESTING")
//                        .background(Color.red)
//                    Spacer()
                }
            }
            
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: examplemovie6)
    }
}



struct MovieInfoSubheadline: View {
    var movie: Movie
    var body: some View {
        HStack{
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonDisplay)
            
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
            
            
        }.frame(width: 50, height: 20)
    }
}

struct CastInfo: View {
    var movie: Movie
    var body: some View {
        VStack{
            HStack{
                Text("cast: \(movie.cast)")
                Spacer()
            }
            HStack{
                Text("Creators: \(movie.creator)")
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay).bold()
                Spacer()
            }
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
