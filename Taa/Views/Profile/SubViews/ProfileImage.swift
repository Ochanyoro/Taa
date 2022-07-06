//
//  ProfileImage.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/01.
//

import SwiftUI

struct ProfileImage: View {
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack {
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
                    Text("3")
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
            
            HStack {
                HStack {
                    Spacer()
                    Image(systemName: "magazine.fill")
                        .foregroundColor(.white.opacity(1))
                    
                    Text("スケジュール")
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                        .foregroundColor(.black.opacity(0.6))
                        .padding(.top, 3)
                    Spacer()
                }
                .padding(.vertical,10)
                .padding(.horizontal,0)
                .frame(width: screen.width / 3.3, height: 50)
                .background(Color(red: 1, green: 0.59, blue: 0.698,opacity: 0.4))
                .cornerRadius(5)
                .compositingGroup()
                .shadow(color: .gray.opacity(0.1), radius: 3, x: 5, y: 5)
                
                HStack {
                    Spacer()
                    Image(systemName: "star.fill")
                        .foregroundColor(.white.opacity(1))
                    
                    Text("お気にいり")
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                        .foregroundColor(.black.opacity(0.6))
                        .padding(.top, 3)
                    Spacer()
                }
                .padding(.vertical,10)
                .padding(.horizontal,0)
                .frame(width: screen.width / 3.3, height: 50)
                .background(.yellow.opacity(0.4))
                .cornerRadius(5)
                .compositingGroup()
                .shadow(color: .gray.opacity(0.1), radius: 3, x: 5, y: 5)
                
                HStack {
                    Spacer().frame(width: 15)
                    Image(systemName: "doc.text.magnifyingglass")
                        .foregroundColor(.white.opacity(1))
                    
                    Spacer().frame(width:20)
                    Text("発見")
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                        .foregroundColor(.black.opacity(0.6))
                        .padding(.top, 3)
                    Spacer()
                }
                .padding(.vertical,10)
                .padding(.horizontal,0)
                .frame(width: screen.width / 3.3, height: 50)
                .background(Color(red: 0.16, green: 0.9, blue: 0.2,opacity: 0.4))
                .cornerRadius(5)
                .compositingGroup()
                .shadow(color: .gray.opacity(0.1), radius: 3, x: 5, y: 5)
                
            }
            .frame(alignment: .center)
        }
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage()
    }
}
