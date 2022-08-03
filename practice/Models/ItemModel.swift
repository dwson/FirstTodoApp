//
//  ItemModel.swift
//  practice
//
//  Created by Dongwoo Son on 2022/07/26.
//

import Foundation

struct ItemModel: Identifiable{
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
