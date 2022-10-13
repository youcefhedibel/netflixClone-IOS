//
//  CustomTabSwitcher.swift
//  buildNetflix
//  Created by mac on 22/9/2022.
//

import SwiftUI

struct CustomTabSwitcher: View {
    @State private var currentTab: CustomTab = .episodes
    var tabs: [CustomTab]
    var movies: [Movie]
    var movie: Movie
    
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) {
                        tab in
                        VStack {
                            Rectangle()
                                .frame(height: 4)
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                                .padding(.horizontal, 4)
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                            })
                            .buttonStyle(.plain)
                            .frame(height: 30)
                        }
                        
                    }
                }
            }
            switch currentTab {
            case .episodes:
                SmallVerticalButton(text: "TEST", isOnImage: "", isOffImage: "", isOn: true){
                    
                }
            case .trailer:
                TrailerList(trailers: movie.trailers)
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovie)
            }
            
        }
        .foregroundColor(.white)
        
    }
}

enum CustomTab: String {
    
    case episodes = "EPISODE"
    case trailer = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
    
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    var movies: [Movie]
    var movie: Movie

    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episodes, .trailer, .more], movies: exampleMovies, movie: examplemovie1)
        }
    }
}
