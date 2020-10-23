//
//  FunnyNoteView.swift
//  Funny
//
//  Created by yanzhen on 2020/10/23.
//

import SwiftUI

struct FunnyNoteView: View {
    private let notes = FNSQLite.allNote()
    var body: some View {
        ScrollView(.vertical) {
            LazyHGrid(rows: Array(repeating: GridItem(.fixed(170)), count: 1), spacing: 5) {
                ForEach(0..<notes.count) { index in
                    NavigationLink(destination: FunnyLinkView(index: index)) {
                        FunnyNoteCell(note: notes[index])
                            .frame(width: (SCREENW - 15)/2)
                    }
                }
            }
            .padding()
        }//can not adjust the order
        .frame(width: SCREENW)
        .background(Color(red: 242/255.0, green: 242/255.0, blue: 247/255.0, opacity: 1))
        .ignoresSafeArea(edges: .bottom)
        .navigationTitle("Note")
    }
}

struct FunnyNoteView_Previews: PreviewProvider {
    static var previews: some View {
        FunnyNoteView()
    }
}
