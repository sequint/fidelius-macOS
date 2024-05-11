//
//  Credential.swift
//  fidelius-macOS
//
//  Created by Steven Quintana on 5/11/24.
//

import Foundation
import SwiftData

@Model
final class Credential {
    @Attribute(.unique) var name: String
    @Attribute(.unique) var password: String
    
    init(name: String, password: String) {
        self.name = name
        self.password = password
    }
}
