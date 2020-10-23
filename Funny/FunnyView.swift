//
//  FunnyView.swift
//  Funny
//
//  Created by yanzhen on 2020/10/22.
//

import SwiftUI

struct FunnyView: View {
    var body: some View {
        let apps = [("note", "办公家具"), ("note", "办公家具"), ("", ""), ("", "")]
        ScrollView(.vertical) {
            LazyHGrid(rows: Array(repeating: GridItem(.fixed(85)), count: 1), spacing: (SCREENW - 240)/5) {
                ForEach(0..<apps.count) { index in
                    FunnyAppView(image: apps[index].0, title: apps[index].1)
                        .frame(width: 60)
                }
            }
            .padding()
        }
    }
}

struct FunnyView_Previews: PreviewProvider {
    static var previews: some View {
        FunnyView()
    }
}
