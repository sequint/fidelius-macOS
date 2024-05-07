//
//  Title.swift
//  fidelius-macOS
//
//  Created by Steven Quintana on 5/6/24.
//

import SwiftUI

struct Title: View {
    var body: some View {
        Text("Fidelius")
            .font(Font.custom("Arial Rounded MT Bold", size: 72))
            .foregroundColor(.teal)
    }
}

#Preview {
    Title()
}
