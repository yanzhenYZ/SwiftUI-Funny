//
//  FunnyAppRowView.swift
//  Funny
//
//  Created by yanzhen on 2020/10/22.
//

import SwiftUI

struct FunnyAppRowView: View {
    let arr = ["办公家具", "厨房家具", "", ""]
    var body: some View {
        HStack {
            ForEach(arr, id: \.self) { item in
                HStack {
                    Spacer()
                    FunnyAppView()
                    Spacer()
                }
            }
        }
    }
}

struct FunnyAppRowView_Previews: PreviewProvider {
    static var previews: some View {
        FunnyAppRowView()
    }
}
