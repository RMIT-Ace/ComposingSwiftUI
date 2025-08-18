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
        List {
            VStack(alignment: .leading) {
                BreadcrumbView($vm.breadcrumbs)
                    .foregroundStyle(Color.red)
                    .font(Font.caption)
                
                Text("Page One Title")
                    .font(.title)
                    .bold()
                
                Text("Page One Subtitle")
                    .font(.title2)
                    .bold()
                
                BreadcrumbView($vm.sections)
                    .font(Font.subheadline)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(vm.programs, id: \.self) { program in
                            ProgramPanelView(program)
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
            .listRowSeparator(.hidden)

            dummyListBlock()
            dummyListBlock()
        }
        .listStyle(.plain)
        .scrollIndicators(.hidden)
    }
    
    private func dummyListBlock(
        color: Color = .gray.opacity(0.15)
    ) -> some View {
        VStack { color }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .frame(height: 300)
            .listRowSeparator(.hidden)
    }
}

#Preview {
    ViewOnePageOneView()
        .padding()
        .environment(ViewOneViewModel.shared)
}
