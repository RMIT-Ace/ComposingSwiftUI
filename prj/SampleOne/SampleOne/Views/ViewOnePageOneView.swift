//
//  ViewOnePageOneView.swift
//  SampleOne
//
//  Created by Ace on 17/8/2025.
//

import SwiftUI

struct ViewOnePageOneView: View {
    @Environment(ViewOneViewModel.self) private var vm: ViewOneViewModel
    
    var body: some View {
        @Bindable var vm = vm
        ScrollView {
            VStack(alignment: .leading) {
                BreadcrumbView($vm.breadcrumbs)
                    .foregroundStyle(Color.red)
                
                Text("Page One Title")
                    .font(.title)
                    .bold()
                
                Text("Page One Subtitle")
                    .font(.title2)
                    .bold()
                
                BreadcrumbView($vm.sections)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(vm.programs, id: \.self) { program in
                            ProgramPanelView(program)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ViewOnePageOneView()
        .padding()
        .environment(ViewOneViewModel.shared)
}
