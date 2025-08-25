//
//  HeaderInfoTrophyView.swift
//  SampleOne
//
//  Created by Ace on 19/8/2025.
//

import SwiftUI

struct HeaderInfoTrophyView: View {
    var title: String = "TITLE"
    var info: String = "INFO"
    var trophyCount: Int = 0
    
    @State private var isShowingInfo: Bool = false
    
    var body: some View {
        HStack(spacing: 2) {
            Text(title)
                .font(Font.title2.bold())
                .foregroundStyle(.primary)
            Button {
                isShowingInfo.toggle()
            } label: {
                Image(systemName: "info.circle")
                    .foregroundStyle(Color.gray)
            }
            
            Spacer()
            
            ForEach(0..<trophyCount, id: \.self) { _ in
                Image(systemName: "trophy")
                    .foregroundStyle(Color.gray)
            }
        }
        .sheet(isPresented: $isShowingInfo) {
            VStack {
                Text(info)
            }
            .padding(.horizontal, 20)
            .presentationDetents([.medium])
        }
    }
}

#Preview {
    HeaderInfoTrophyView(
        title: "Weekly Watching",
        trophyCount: 3
    )
    .padding()
}
