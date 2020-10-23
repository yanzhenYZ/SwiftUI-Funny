//
//  FunnyView.swift
//  Funny
//
//  Created by yanzhen on 2020/10/22.
//

import SwiftUI

struct FunnyView: View {
    var body: some View {
        let apps = [("note", "办公"), ("note", "家具"), ("", ""), ("", "")]
        NavigationView {
            ScrollView(.vertical) {
                LazyHGrid(rows: Array(repeating: GridItem(.fixed(85)), count: 1), spacing: (SCREENW - 240)/5) {
                    ForEach(0..<apps.count) { index in
                        FunnyAppView(image: apps[index].0, title: apps[index].1)
                            .frame(width: 60)
                    }
                }
                .padding()
            }//can not adjust the order
            .frame(width: SCREENW)
            .background(Color(red: 242/255.0, green: 242/255.0, blue: 247/255.0, opacity: 1))
            .navigationBarTitle("Funny", displayMode: .inline)
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct FunnyView_Previews: PreviewProvider {
    static var previews: some View {
        FunnyView()
    }
}
