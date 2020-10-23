//
//  FunnyLinkView.swift
//  Funny
//
//  Created by yanzhen on 2020/10/23.
//

import SwiftUI

struct FunnyLinkView: View {
    var index = 0
    var body: some View {
        if index == 0 {
            FunnyGifshowView()
        } else {
            FunnyNoteView()
        }
    }
}

struct FunnyLinkView_Previews: PreviewProvider {
    static var previews: some View {
        FunnyLinkView()
    }
}
