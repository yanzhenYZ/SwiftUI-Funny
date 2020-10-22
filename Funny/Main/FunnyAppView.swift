//
//  FunnyAppView.swift
//  Funny
//
//  Created by yanzhen on 2020/10/22.
//

import SwiftUI

struct FunnyAppView: View {
    var body: some View {
        VStack {
            Image("gifshow")
            Spacer()
            Text("快手")
        }
    }
}

struct FunnyAppView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FunnyAppView()
                .frame(width: 60, height: 85)
        }
    }
}
