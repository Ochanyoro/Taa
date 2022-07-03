//
//  FavoriteView.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/03.
//

import SwiftUI

struct FavoriteView: View {
    
    @State var screen = UIScreen.main.bounds
    
    let favorite:FavoriteModel = exampleFavorite1
    
    
    var body: some View {
        VStack(alignment: .leading,spacing: 3) {
            
            HStack(spacing:2) {
                Text("cafe")
                    .font(.headline)
                .padding(.leading,16)
                
                Image(systemName: "cup.and.saucer")
                    .font(.system(size: 14))
                    .padding(.top,2)
                Spacer()
            }.opacity(0.8)
            
            ScrollView(.horizontal) {
                
                HStack {
                    ForEach(0..<6){ _ in
                        FavoriteImage(favorite: favorite)
                    }
                }
            }
            .background(Color(red: 0.956, green: 0.856, blue: 0.698,opacity: 0.05))
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
