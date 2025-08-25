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
                    HeaderInfoTrophyView(
                        title: vm.sectionInfos[0].header,
                        info: vm.sectionInfos[0].note,
                        trophyCount: vm.sectionInfos[0].trophyCount )
                }
                .listRowInsets(
                    EdgeInsets(top: 4, leading: 14, bottom: 0, trailing: 0)
                )

                NavigationLinkPanelView {
                    Text(vm.sectionInfos[1].header)
                }
                
                Section {
                    dummyListBlock()
                } header: {
                    HeaderInfoTrophyView(
                        title: vm.sectionInfos[2].header,
                        info: vm.sectionInfos[2].note,
                        trophyCount: vm.sectionInfos[2].trophyCount)
                }
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
