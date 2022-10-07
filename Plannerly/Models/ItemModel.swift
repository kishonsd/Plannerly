//
//  ItemModel.swift
//  Plannerly
//
//  Created by kishon daniels on 10/7/22.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemMdodel {
        return ItemMdodel(id: id, title: title, isCompleted: !isCompleted)
    }
}