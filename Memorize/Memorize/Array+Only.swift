//
//  Array+Only.swift
//  Memorize
//
//  Created by 张毅成 on 2020/7/28.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
