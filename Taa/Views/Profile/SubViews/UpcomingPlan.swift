//
//  UpcomingPlan.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/01.
//

import SwiftUI

struct UpcomingPlan: View {
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack(spacing: 6) {
            HStack{
                Text("直近の予定")
                    .font(.headline)
                Spacer()
            }
            .padding(.leading, 10)
            .padding(.vertical, 8)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
            
            HStack(spacing: 10){
                ZStack(alignment: .bottomLeading) {
                    Image("lunch")
                        .resizable()
                        .scaledToFill()
                        .frame(width: screen.width/2-18, height: 300)
                        .clipped()
                        .cornerRadius(10)
                        .shadow(radius: 3)
                    
                    
                    Text("食事")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: screen.width / 2-18)
                        .lineLimit(1)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.4)
                        .padding(.vertical,10)
                        .background(Color.white.opacity(0.2))
                        .padding(.top, -180)
                    
                    VStack(spacing:0){
                        HStack {
                            Text("参加人数:10人")
                                .font(.system(size: 10))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .lineLimit(1)
                                .padding(.vertical,2)
                                .padding(.leading,4)
                            
                            Spacer()
                        }
                        
                        
                        ScrollView(.horizontal) {
                            HStack(spacing:0){
                                ForEach(0..<10){ index in
                                    Image("top")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 35, height: 35)
                                        .clipped()
                                        .cornerRadius(17.5)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 17.5)
                                                .stroke(Color.red.opacity(1.0), lineWidth: 1)
                                        )
                                }
                                .padding(.bottom,3)
                                .padding(.leading,3)
                            }
                        }
                    }
                    
                }
                .frame(width: screen.width/2-18)
                
                
                ZStack(alignment: .bottomLeading) {
                    Image("hangOut")
                        .resizable()
                        .scaledToFill()
                        .frame(width: screen.width/2-18, height: 300)
                        .clipped()
                        .cornerRadius(10)
                        .shadow(radius: 3)
                    
                    
                    Text("デート")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: screen.width / 2-18)
                        .lineLimit(1)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.4)
                        .padding(.vertical,10)
                        .background(Color.white.opacity(0.2))
                        .padding(.top, -180)
                    
                    
                    VStack(spacing:0){
                        HStack {
                            Text("参加人数:5人")
                                .font(.system(size: 10))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .lineLimit(1)
                                .padding(.vertical,2)
                                .padding(.leading,4)
                            
                            Spacer()
                        }
                        
                        
                        
                        ScrollView(.horizontal) {
                            HStack(spacing:0){
                                ForEach(0..<5){ index in
                                    Image("backbround1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 35, height: 35)
                                        .clipped()
                                        .cornerRadius(17.5)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 17.5)
                                                .stroke(Color.green.opacity(1.0), lineWidth: 1)
                                        )
                                }
                                .padding(.bottom,3)
                                .padding(.leading,3)
                            }
                        }
                    }
                    
                }
                
                .frame(width: screen.width/2-18)
            }
        }
        .padding(.horizontal,10)
    }
}

struct UpcomingPlan_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingPlan()
    }
}
