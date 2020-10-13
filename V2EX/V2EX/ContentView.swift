//
//  ContentView.swift
//  V2EX
//
//  Created by 张毅成 on 2020/10/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: .constant(1),
                content:  {
                    Text("Tab Content 1").tabItem { Text("最热") }.tag(1)
                    Text("Tab Content 2").tabItem { Text("Tab Label 2") }.tag(2)
                    Text("Tab Content 3").tabItem { Text("我的收藏") }.tag(3)
                    Text("Tab Content 4").tabItem { Text("我") }.tag(4)
                })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
