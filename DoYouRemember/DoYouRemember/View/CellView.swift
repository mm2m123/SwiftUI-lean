//
//  CellView.swift
//  DoYouRemember
//
//  Created by 张毅成 on 2020/10/22.
//

import SwiftUI

struct CellView: View {
    var title = ""
    
    var body: some View {
        Text(title)
    }
    init(_ string: String) {
        title = string
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView("123")
    }
}
