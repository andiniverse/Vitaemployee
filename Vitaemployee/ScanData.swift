//
//  ScanData.swift
//  Nyobalagiii
//
//  Created by Andini Malavika on 22/05/24.
//

import Foundation

struct ScanData: Identifiable, Equatable {
    var id = UUID()
    let content: String

    init(content: String) {
        self.content = content
    }
}
