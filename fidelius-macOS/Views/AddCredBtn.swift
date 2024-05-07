//
//  AddCredBtn.swift
//  fidelius-macOS
//
//  Created by Steven Quintana on 5/7/24.
//

import SwiftUI

struct AddCredBtn: View {
    var body: some View {
        Button(
            action: { addCredential(name: "test") },
            label: {
                Text("+")
            }
        )
    }
}

#Preview {
    AddCredBtn()
}
