//
//  BreadcrumbView.swift
//  SampleOne
//
//  Created by Ace on 17/8/2025.
//

import SwiftUI

struct BreadcrumbView: View {
    @Binding var breadcrumbItems: [String]
    
    var body: some View {
        HStack {
            ForEach(breadcrumbItems, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    @Previewable @State var items: [String] = ["Home", "About", "Blog"]
    BreadcrumbView(breadcrumbItems: $items)
}
