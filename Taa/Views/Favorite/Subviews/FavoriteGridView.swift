//
//  FavoriteGridView.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/04.
//

import SwiftUI

struct FavoriteGridView: View {
    
    let screen = UIScreen.main.bounds
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        VStack {
            HStack(spacing:2) {
                Text("cafe")
                    .font(.headline)
                .padding(.leading,16)
                
                Image(systemName: "cup.and.saucer")
                    .font(.system(size: 14))
                    .padding(.top,2)
                Spacer()
            }.opacity(0.8)
            
            LazyVGrid(columns: columns) {
                ForEach(exampleFavorites, id: \.self) { exampleFavorite in
                    FavoriteStandardImage(favorite :exampleFavorite)
                        .frame(width: screen.width/3 - 10 ,height: screen.width/3 - 10)
                        .padding(.bottom,18)
                }
            }
            .padding(.horizontal,10)
            .background(Color(red: 0.956, green: 0.856, blue: 0.698,opacity: 0.2))
        }
    }
}

struct FavoriteGridView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
        FavoriteGridView()
        }
    }
}
