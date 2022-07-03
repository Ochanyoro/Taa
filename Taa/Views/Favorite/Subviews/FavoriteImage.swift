//
//  FavoriteImage.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/03.
//

import SwiftUI

struct FavoriteImage: View {
    @State var screen = UIScreen.main.bounds
    @State var favorite: FavoriteModel
        
        var body: some View {
               
                    
                    VStack(spacing:4) {
                        Image(uiImage: favorite.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: screen.size.width/3.4, height: screen.size.width/3.4)
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
                                .font(.footnote)
                                .foregroundColor(Color.black.opacity(0.4))
                                .padding(.trailing, 4)
                            
                            
                            Spacer()
                            
                            Text("食堂")
                                .font(.system(size: 8))
                                .padding(2)
                                .background(Color.gray.opacity(0.3))
                                .cornerRadius(3)
                             
                            }
                        .padding(.horizontal,10)
                        
                        
                    }
                    .frame(width: screen.width/3.2, height: screen.width/3.2 ,alignment: .center)
                    .padding(.vertical,13)
                    .padding(.leading,5)
                    .padding(.trailing,-15)
                    
            }
        }

struct FavoriteImage_Previews: PreviewProvider {
    
    
    static var favorite:FavoriteModel = exampleFavorite
    
    static var previews: some View {
        FavoriteImage(favorite: favorite)
            
    }
}
