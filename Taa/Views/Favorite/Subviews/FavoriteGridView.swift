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
        VStack(spacing:10) {
            HStack(spacing:2) {
                
                Image(systemName: "cup.and.saucer.fill")
                    .font(.system(size: 14))
                    .padding(.top,2)
                    .padding(.leading,20)
                    .padding(.trailing,5)
                    .foregroundColor(.pink)
                Text("cafe")
                    .font(.headline)
                Spacer()
            }.opacity(0.8)
            
            LazyVGrid(columns: columns) {
                ForEach(exampleFavorites, id: \.self) { exampleFavorite in
                    FavoriteStandardImage(favorite :exampleFavorite)
                        .frame(width: screen.width/3 - 30 ,height: screen.width/3 - 30)
                        .padding(.bottom,30)
                }
                //.padding()
            }
            .padding(.horizontal,10)
            .background(Color.gray.opacity(0.04))
//            .background(Color(red: 0.956, green: 0.856, blue: 0.698,opacity: 0.1))
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
