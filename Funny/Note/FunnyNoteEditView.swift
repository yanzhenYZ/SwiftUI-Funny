//
//  FunnyNoteEditView.swift
//  Funny
//
//  Created by yanzhen on 2020/10/24.
//

import SwiftUI

struct FunnyNoteEditView: View {
    @Binding var isActive: Bool
    @State private var content: String = "1"
    var note: FunnyNote?
    var body: some View {
        TextEditor(text: $content)
            .navigationTitle("Note")
            .navigationBarItems(trailing: Button("保存", action: {
                if let note = note {
                    if content.count > 0 {
                        note.content = content
                        FNSQLite.update(note)
                    } else {
                        FNSQLite.delete(note)
                    }
                } else {
                    if content.count > 0 {
                        let note = FunnyNote()
                        note.content = content
                        note.time = Int64(Date().timeIntervalSince1970)
                        FNSQLite.insert(note)
                    }
                }
                isActive = false
            }))
    }
}

private extension FunnyNoteEditView {
    func dealWithNote() {
        
    }
}

struct FunnyNoteEditView_Previews: PreviewProvider {
    static var previews: some View {
        FunnyNoteEditView(isActive: .constant(true), note: nil)
    }
}
