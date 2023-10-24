//
//  FrameworkListView.swift
//  AppleFramework-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct FrameworkListView: View {
    
    @State var list: [AppleFramework] = AppleFramework.list
    
    // .fixed는 값 고정 .adaptive는 크기 제안에 맞게 채워넣기
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    // GridItem 3개여서 한 줄에 3개 item이 표시됨.
    
    var body: some View {
        // LazyVGrid, LazyHGrid
        // Data: list로 가져옴. , Presentation: cell에서 설정함. , Layout
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(list) {
                        item in FrameworkCell(framework: item)
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("💻Apple Framework")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
