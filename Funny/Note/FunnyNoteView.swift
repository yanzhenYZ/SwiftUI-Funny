//
//  FunnyNoteView.swift
//  Funny
//
//  Created by yanzhen on 2020/10/23.
//

import SwiftUI

struct FunnyNoteView: View {
    @State private var isActive = false
    private let notes = FNSQLite.allNote()
    private let bgColor = Color.rgbColor(242, g: 242, b: 247)
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                LazyHGrid(rows: Array(repeating: GridItem(.fixed(170)), count: 1), spacing: 5) {
                    ForEach(0..<notes.count) { index in
                        NavigationLink(destination: FunnyNoteEditView(isActive: $isActive, note: notes[index]), isActive: $isActive) {
                            FunnyNoteCell(note: notes[index])
                                .frame(width: (SCREENW - 15)/2)
                        }
                    }
                }
                .padding()
            }
            .frame(width: SCREENW)
            .background(bgColor)
            .navigationTitle("Note")
            //底部有边距？？？
      
            NavigationLink(destination: FunnyNoteEditView(isActive: $isActive)) {
                Text("+")
                    .font(.system(size: 30))
                    .frame(width: SCREENW)
                    .padding([.leading, .trailing, .top], 0)
            }
            .frame(height: 20)
            Spacer()
            

        }
        .background(Color.equalGRBColor(247))
    }
}

struct FunnyNoteView_Previews: PreviewProvider {
    static var previews: some View {
        FunnyNoteView()
    }
}
