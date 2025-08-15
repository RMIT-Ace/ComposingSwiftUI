//
//  ViewOne.swift
//  SampleOne
//
//  Created by Ace on 15/8/2025.
//

import SwiftUI

struct ViewOne: View {
    let options = ["First", "Second", "Third"]
    
    @State private var selectedOption = 0
    
    var body: some View {
        NavigationStack {
            Picker("Options", selection: $selectedOption) {
                ForEach(0..<self.options.count, id: \.self) {
                    Text(self.options[$0])
                }
            }
            .pickerStyle(.segmented)
            .toolbar { ViewOneToolbarView() }
            
            Spacer()
            Text("\(options[selectedOption]) view")
            
            Spacer()
        }
    }
}

#Preview {
    ViewOne()
}
