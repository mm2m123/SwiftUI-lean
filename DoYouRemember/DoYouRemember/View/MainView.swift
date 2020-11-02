//
//  MainView.swift
//  DoYouRemember
//
//  Created by 张毅成 on 2020/10/22.
//

import SwiftUI

struct MainView: View {
    @State var isPresented = false
    
    var body: some View {
        NavigationView {
            List(0..<50){ item in
//                Text("Item # \(item)")
                CellView("Item # \(item)")
                    .padding(5)
            }
            .navigationBarItems(trailing:
                                    Button("添加", action: {
                                        self.isPresented = true
                                    }).sheet(isPresented: $isPresented) {
                                        DetailView()
                                    })
            .navigationBarTitle(Text("你还记得吗"))
        }
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
