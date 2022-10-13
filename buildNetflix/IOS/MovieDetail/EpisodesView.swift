//
//  EpisodesView.swift
//  buildNetflix
//
//  Created by mac on 25/9/2022.
//

import SwiftUI

struct EpisodesView: View {
    
    var episodes: [Episode]
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisode(forSeason season: Int) -> [Episode]{
        return episodes.filter({ $0.season == season })
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing : 14){
            // Season Picker
            HStack{
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group{
                        Text("Saison 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                })
                
                Spacer()
                
            }

//            Spacer()
            // Episodes List
            
            ForEach(getEpisode(forSeason: selectedSeason)) {
                episode in
                VStack(alignment: .leading){
                    HStack{
                        VideoPreviewImage(imageURL: episode.thumbnailURL, videoURL: episode.videoURL)
                            .frame(width: 120, height: 70)

                        VStack(alignment: .leading){
                            Text("\(episode.episodeNumber), \(episode.name)")
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                            Text("\(episode.length)")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                          
                        }
                        Spacer()
                        Image(systemName: "arrow.down.to.line.alt")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            
                    }
                    HStack{
                        Text(episode.description)
                            .font(.system(size: 13))
                            .foregroundColor(.white)
                    }
                } .padding(.bottom, 20)
            }
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
        
    }
        
    }

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            EpisodesView(episodes: allExampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
