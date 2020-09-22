//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by 张毅成 on 2020/9/21.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
