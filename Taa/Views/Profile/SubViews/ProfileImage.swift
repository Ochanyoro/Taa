//
//  ProfileImage.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/01.
//

import SwiftUI

struct ProfileImage: View {
    var body: some View {
        HStack(spacing:10) {
            
            
            VStack(alignment:.leading) {
                ZStack {
                    Image("top")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 110, height: 110)
                        .cornerRadius(55)
                        .overlay(
                                RoundedRectangle(cornerRadius: 55)
                                    .stroke(Color.gray.opacity(0.1), lineWidth: 2)
                                )
                }
                .frame(width: 110, height: 110)
                .shadow(radius: 1)
                
                Spacer().frame(height: 15)
                
                Text("Ochan")
                    .padding(.leading,10)
            }
                //.padding(.trailing, 30)
            
            Spacer().frame(width:10)
  
            
            VStack{
                Text("2")
                    .font(.headline)
                    .foregroundColor(Color.black)
                
                Text("直近予定")
                    .font(.footnote)
                    .foregroundColor(Color.black.opacity(0.4))
            }
            VStack{
                Text("100")
                    .font(.headline)
                    .foregroundColor(Color.black)
                
                Text("リクエスト")
                    .font(.footnote)
                    .foregroundColor(Color.black.opacity(0.4))
            }
            VStack{
                Text("78億")
                    .font(.headline)
                    .foregroundColor(Color.black)
                
                Text("相互フォロー")
                    .font(.footnote)
                    .foregroundColor(Color.black.opacity(0.4))
            }
           
            
            
        }
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage()
    }
}
