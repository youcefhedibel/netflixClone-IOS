//
//  ContentView.swift
//  buildNetflix
//
//  Created by mac on 11/9/2022.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    
    var vm = HomeVM()
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
//            Main VSTACK
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    TopRowButtons()
                   
                        TopMoviePreview(movie: examplemovie6)
                            .frame(width: screen.width)
                            .padding(.top, -100)
                            .zIndex(-1)
                        
                    
                    ForEach(vm.allCategories, id: \.self){
                        category in
                        VStack {
                            HStack{
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack{
                                    ForEach(vm.getMovie(forCat: category)){ movie in StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal,20)
                                    }
                                }
                            }
                        }
                        
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack(spacing: 42){
            Button(action: {
                //
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50)
            })
            .buttonStyle(PlainButtonStyle())
            
            HStack(spacing: 24){
            Button(action: {
                
            }, label: {
                Text("TV Shows")
            })
            .buttonStyle(PlainButtonStyle())
            
            
            Button(action: {
                
            }, label: {
                Text("Movies")
            })
            .buttonStyle(PlainButtonStyle())
            
            
            Button(action: {
                
            }, label: {
                Text("My list")
            })
            .buttonStyle(PlainButtonStyle())
            }
            
        }
        .padding(4)
        .padding(.trailing)
        .background(Color.black)
    }
}
