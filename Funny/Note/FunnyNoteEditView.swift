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
    var body: some View {
        TextEditor(text: $content)
            .navigationTitle("Note")
            .navigationBarItems(trailing: Button("保存", action: {
                if content.count > 0{
                    
                }
                isActive = true
            }))
    }
}

private extension FunnyNoteEditView {
    func dealWithNote() {
        
    }
}

struct FunnyNoteEditView_Previews: PreviewProvider {
    static var previews: some View {
        FunnyNoteEditView(isActive: .constant(true))
    }
}
