//
//  Main.swift
//  fidelius-macOS
//
//  Created by Steven Quintana on 5/7/24.
//

import SwiftUI

struct Main: Scene {
    var body: some Scene {
        WindowGroup {
            ZStack {
                Color.white
                VStack {
                    Title()
                    AddCredBtn()
                }
                .padding()
            }
        }
    }
}

#Preview {
    Main() as! any View
}
