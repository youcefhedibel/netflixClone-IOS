//
//  WhiteButton.swift
//  buildNetflix
//
//  Created by mac on 11/9/2022.
//

import SwiftUI

struct PlayButton: View {
    var text: String
    var imageName: String
    var backgoundColor: Color = Color.white
    
    
    
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack{
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                    
                Text(text)
                    .font(.system(size: 16))
                Spacer()
                    
            }
                .padding(.vertical, 6)
                .background(backgoundColor)
                .foregroundColor(backgoundColor == .white ? .black : .white)
                .cornerRadius(3.0)
                
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            PlayButton(text: "Play", imageName: "play.fill",backgoundColor: .white){
                        //
                    }
        }
        
    }
}
