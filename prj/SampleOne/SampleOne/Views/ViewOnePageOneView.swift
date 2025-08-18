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
        NavigationStack {
            List {
                pageTitleView()
                
                Section {
                    programHScrollView()
                } header: {
                    HStack {
                        Text("Weekly Programs")
                            .font(Font.title2.bold())
                            .foregroundStyle(Color.black)
                    }
                }
                .listRowInsets(
                    EdgeInsets(top: 4, leading: 14, bottom: 0, trailing: 0)
                )

                ZStack {
                    Color.red
                    HStack {
                        Image(systemName: "gift")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Watch together")
                            .font(Font.title3.bold())
                        Spacer()
                        Text(">")
                            .bold()
                    }
                    .padding(.horizontal)
                    .frame(height: 100)
                    .foregroundStyle(Color.white)
                }
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .background {
                    // Workaround - Hide Chevron by putting link in .background
                    NavigationLink("") {
                        Text("Watch Together View")
                    }
                }

                dummyListBlock()
                dummyListBlock()
            }
            .listStyle(.plain)
            .listSectionSpacing(0)
            .scrollIndicators(.hidden)
        }
    }
    
    private func pageTitleView() -> some View {
        @Bindable var vm = vm
        return VStack(alignment: .leading) {
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
        }
        .listRowSeparator(.hidden)
    }
    
    private func programHScrollView() -> some View {
        return VStack(alignment: .leading) {
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
