//
//  TapMoviePreview.swift
//  buildNetflix
//
//  Created by mac on 11/9/2022.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie : Movie
    func isCategoryLast(_ cat :String) -> Bool{
        let catCount =  movie.categories.count
        if let index = movie.categories.lastIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    var body: some View {
        ZStack{
           
            
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack{
                    ForEach(movie.categories, id : \.self) { category in
                        HStack {
                           
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category){
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.green)
                                    .font(.system(size: 5))
                            }
                        }
                    }
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My list", isOnImage: "checkmark", isOffImage: "plus", isOn: true){
                        //
                    }
                    Spacer()
                    PlayButton(text: "Play", imageName: "play.fill"){
                        
                    }.frame(width: 120)
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true){
                        //
                    }
                    
                    Spacer()
                }
            }   .foregroundColor(.white)
                .background(
                    LinearGradient.blackOpacityGradient
                )
                .padding(.top, 100)
            }
            
        }
    }

struct TapMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        
        TopMoviePreview(movie: examplemovie5)
    }
}
