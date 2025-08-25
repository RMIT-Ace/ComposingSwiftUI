//
//  ViewOne.swift
//  SampleOne
//
//  Created by Ace on 15/8/2025.
//

import SwiftUI

/// View One
///
/// Represents a futher break-down of user-interface into sub views.
/// The display of each sub-view is controlled by a user's selection via
/// Picker view.
///
/// This view shows the concepts of Separation of Concerns using
/// Model View ViewModel (MVVM) methodology. With MVVM, views only
/// concern with how to present the looks and the feels (UI & UX). Whereas,
/// ViewModel manages and provides information to the view(s).
///
struct ViewOneView: View {
    
    @State private var viewOneVM: ViewOneViewModel = .shared
    
    @State private var selectedOption = 0

    var body: some View {
        NavigationStack {
            Picker("Options", selection: $selectedOption) {
                ForEach(0 ..< viewOneVM.options.count, id: \.self) {
                    Text(viewOneVM.options[$0])
                }
            }
            .padding(.horizontal)
            .toolbar { ViewOneToolbarView() }
            .pickerStyle(.segmented)

            switch (selectedOption) {
            case 0:
                ViewOnePageOneView()
                    .padding(.horizontal)
                    .environment(viewOneVM)

            default:
                Text("View One - Default")
            }
            
            Spacer()
        }
    }
}

#Preview {
    ViewOneView()
}
