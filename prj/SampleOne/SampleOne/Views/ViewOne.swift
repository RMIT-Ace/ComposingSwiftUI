//
//  ViewOne.swift
//  SampleOne
//
//  Created by Ace on 15/8/2025.
//

import SwiftUI

struct ViewOne: View {
    var body: some View {
        NavigationStack {
            Text("Hello, World!")
                .toolbar { ViewOneToolbarView() }
        }
    }
}

#Preview {
    ViewOne()
}
