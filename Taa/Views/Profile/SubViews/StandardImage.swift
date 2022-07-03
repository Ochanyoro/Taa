//
//  StandardImage.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/01.
//

import SwiftUI
import UIKit

struct StandardImage: View {
    
    @State var schedule: ScheduleModel

    
    var body: some View {
        ZStack(alignment: .center) {
            GeometryReader { proxy in
                //KFImage(movie.thumbnailURL)
                Image(uiImage: schedule.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 3)
                
                VStack(spacing:0){
                    HStack{
                        Spacer()
                        Text(schedule.date)
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(.blue.opacity(0.8))
                            .cornerRadius(10)
                            .padding(.top,5)
                            .padding(.trailing,3)
                            .frame(height: 60,alignment: .top)
                    }
                    Spacer()
                    Text("\(schedule.title)")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: proxy.size.width)
                        .lineLimit(1)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.4)
                        .padding(.vertical,10)
                        .background(Color.white.opacity(0.2))
                    //.padding(.top, -180)
                    
                    Spacer()
                    
                    
                    HStack {
                        Text("参加人数:\(schedule.joinPeople.count)")
                            .font(.system(size: 10))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .lineLimit(1)
                            .padding(.vertical,2)
                            .padding(.leading,4)
                        
                        Spacer()
                    }
                    .frame(height:20,alignment: .bottom)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing:0){
                            ForEach(schedule.joinPeople, id: \.self){ people in
                                Image(uiImage: people.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 35, height: 35)
                                    .clipped()
                                    .cornerRadius(17.5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 17.5)
                                            .stroke(lineWidth: 1)
                                            .fill(people.userColor)
                                    )
                            }
                            .padding(.bottom,3)
                            .padding(.leading,3)
                        }
                    }
                    .frame(height:40)
                    
                }
            }
            
        }
    }
}

struct StandardImage_Previews: PreviewProvider {
    
    static var screen = UIScreen.main.bounds
    static var exampleSchedule = exampleSchedule1
    
    
    static var previews: some View {
        StandardImage(schedule: exampleSchedule)
            .frame(width: screen.width/2 - 18, height: 300)
    }
}
