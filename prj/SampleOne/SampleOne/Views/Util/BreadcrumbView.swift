//
//  BreadcrumbView.swift
//  SampleOne
//
//  Created by Ace on 17/8/2025.
//

import SwiftUI

struct BreadcrumbView: View {
    @Binding var breadcrumbItems: [String]
    private let separator: String
    
    init(
        _ breadcrumbItems: Binding<[String]>,
         separator: String = "·"
    ) {
        self._breadcrumbItems = breadcrumbItems
        self.separator = separator
    }

    var body: some View {
        HStack(spacing: 2) {
            ForEach(breadcrumbItems.enumerated(), id: \.offset) { index, item in
                Text(item)
                if index < breadcrumbItems.count - 1 {
                    Text("·")
                }
            }
            Spacer()
        }
    }
}

#Preview {
    @Previewable @State var items: [String] = ["Home", "About", "Blog"]
    BreadcrumbView($items)
}
