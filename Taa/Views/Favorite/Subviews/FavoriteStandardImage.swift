//
//  FavoriteStandardImage.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/04.
//

import SwiftUI

struct FavoriteStandardImage: View {
    
    @State var favorite: FavoriteModel
    
    var body: some View {
            
                GeometryReader { proxy in
                    VStack(spacing:4){
                        Image(uiImage: favorite.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: proxy.size.width, height: proxy.size.height)
                            .clipped()
                            .cornerRadius(5)
                            .overlay(
                                HStack(spacing:0) {
                                    ForEach(0..<5) {_ in
                                        Image(systemName: "star.fill")
                                            .font(.system(size: 8))
                                            .foregroundColor(Color.yellow)
                                    }
                                    
                                }
                                    .padding(.leading,5)
                                    .padding(.bottom,5)
                                ,alignment: .bottomLeading)
                        
                            .overlay(
                                
                                HStack(spacing:0) {
                                    Spacer()
                                    Text("東京:")
                                        .font(.system(size: 6.5))
                                        .fontWeight(.bold)
                                    Text("18km")
                                        .font(.system(size: 6.5))
                                        .fontWeight(.bold)
                                }
                                    .foregroundColor(Color.white)
                                    .padding(.trailing,2)
                                .padding(.bottom,3)
                                ,alignment: .bottomTrailing)
                        
                        HStack(spacing:0) {
                            Text("竹中食堂")
                                .font(.system(size: 11))
                                .foregroundColor(Color.black.opacity(0.4))
                            
                            
                            
                            Spacer()
                            
                            Text("食堂")
                                .font(.system(size: 7))
                                .padding(2)
                                .background(Color.gray.opacity(0.3))
                                .cornerRadius(3)
                             
                            }
                        .padding(.horizontal,5)
                    }
        }
    }
}

struct FavoriteStandardImage_Previews: PreviewProvider {
    
    static var favorite: FavoriteModel = exampleFavorite1
    
    static var screen = UIScreen.main.bounds
    
    static var previews: some View {
        FavoriteStandardImage(favorite: favorite)
            .frame(width: screen.width/3,height: screen.width/3)
    }
}
