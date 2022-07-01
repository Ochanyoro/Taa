//
//  ProfileView.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/01.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                ProfileImage()
                    .padding(.vertical, 15)
                
                
                UpcomingPlan()
                
            }
        })
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button(action: {
            
        }, label: {
            Image(systemName: "line.horizontal.3")
        }))
        .navigationBarItems(trailing:
                                Button(action: {
            
        }, label: {
            Image(systemName: "line.horizontal.3")
        })
                            
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProfileView()
        }
    }
}
