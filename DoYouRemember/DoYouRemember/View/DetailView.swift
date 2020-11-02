//
//  DetailView.swift
//  DoYouRemember
//
//  Created by 张毅成 on 2020/10/22.
//

import SwiftUI

struct DetailView: View {
    @State private var text = ""

    @Environment(\.presentationMode) var mode
    var items: [String] = ["1","2"]
    
    var body: some View {
        VStack{
            VStack{
                HStack(alignment: .center) {
                    Button(action: {
                        self.mode.wrappedValue.dismiss()
                    }, label: {
                        Text("取消")
                    })
                    .padding()
                    
                    Spacer()
                    
                    Text("详细信息")
                    
                    Spacer()
                    
                    Button(action: {
                        self.mode.wrappedValue.dismiss()
                    }, label: {
                        Text("完成")
                    })
                    .padding()
                }
            }
            TextField("请输入", text: $text)
                .padding(20)
                .background(RoundedRectangle(cornerRadius: 10.0))
            Spacer()
        }
                    
    }
    private let cornerRadius: CGFloat = 10.0
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
