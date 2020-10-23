//
//  FunnyNoteCell.swift
//  Funny
//
//  Created by yanzhen on 2020/10/23.
//

import SwiftUI

struct FunnyNoteCell: View {
    var note: FunnyNote
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 246/255.0, green: 222/255.0, blue: 147/255.0))
                .frame(width: (SCREENW - 15)/2, height: 170)
            
            
            VStack {
                Text(note.content)
                Spacer()
                Text(note.time.description)
                    .foregroundColor(.black)
            }
            
            VStack {
                HStack {
                    Spacer()
                    Button("X") {
                        
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct FunnyNoteCell_Previews: PreviewProvider {
    static var previews: some View {
        FunnyNoteCell(note: FunnyNote())
    }
}
