//
//  FunnyView.swift
//  Funny
//
//  Created by yanzhen on 2020/10/22.
//

import SwiftUI

struct FunnyView: View {
    var body: some View {
        VStack {
            FunnyAppRowView()
                .frame(height: 85)
            
            Spacer()
        }
    }
}

struct FunnyView_Previews: PreviewProvider {
    static var previews: some View {
        FunnyView()
    }
}
