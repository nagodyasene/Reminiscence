//
//  Item.swift
//  Reminiscence
//
//  Created by Enes Aydoğan on 24.11.2026.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
