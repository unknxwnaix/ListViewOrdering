//
//  Episodes.swift
//  ListViewOrdering
//
//  Created by Maxim Dmitrochenko on 05-11-2024.
//

import Foundation
import SwiftUI

struct Episode: Identifiable, Equatable {
    let id = UUID()
    var title: String
    var color: Color
    var listOrder: Int
    
    init(title: String, color: Color, listOrder: Int) {
        self.title = title
        self.color = color
        self.listOrder = listOrder
    }
    
    static func == (lhs: Episode, hrs: Episode) -> Bool {
        lhs.id == hrs.id
    }
}

struct MockData {
    static var episodes: [Episode] {
        [Episode(title: "Pink Episode", color: .pink, listOrder: 0),
         Episode(title: "Teal Episode", color: .teal, listOrder: 1),
         Episode(title: "Yellow Episode", color: .yellow, listOrder: 2),
         Episode(title: "Blue Episode", color: .blue, listOrder: 3),
         Episode(title: "Green Episode", color: .green, listOrder: 4),
         Episode(title: "Purple Episode", color: .purple, listOrder: 5),
         Episode(title: "Orange Episode", color: .orange, listOrder: 6),
//         Episode(title: "Red Episode", color: .red, listOrder: 7),
//         Episode(title: "Brown Episode", color: .brown, listOrder: 8),
//         Episode(title: "Gray Episode", color: .gray, listOrder: 9),
//         Episode(title: "Indigo Episode", color: .indigo, listOrder: 10),
//         Episode(title: "Mint Episode", color: .mint, listOrder: 11),
//         Episode(title: "Cyan Episode", color: .cyan, listOrder: 12)
        ]
    }
}
