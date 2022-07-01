//
//  ContentView.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/01.
//

import SwiftUI

struct ContentView: View {
    
    
    init(){
        //TabViewの背景色の設定（黒色）
        UITabBar.appearance().backgroundColor = UIColor.black
        UITabBar.appearance().unselectedItemTintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.7)
    }
    
    var body: some View {
        
        TabView{
            Text("main view")
                .tabItem{
                    Image(systemName: "person")
                    Text("ホーム")
                }
            Text("main view")
                .tabItem{
                    Image(systemName: "calendar")
                    Text("カレンダー")
                }
                //.tag(0)
            
            Text("main view")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("発見")
                }
                // .tag(1)
            
            Text("main view")
                .tabItem(){
                    Image(systemName: "leaf")
                    Text("お気に入り")
                }
               // .tag(2)
            Text("gg")
                .tabItem {
                    Image(systemName: "message.circle")
                    Text("チャット")
                }
        }
        
        .accentColor(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
