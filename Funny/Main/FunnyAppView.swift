//
//  FunnyAppView.swift
//  Funny
//
//  Created by yanzhen on 2020/10/22.
//

import SwiftUI

struct FunnyAppView: View {
    var image = ""
    var title = ""
    var body: some View {
        VStack {
            Image(image)
                .cornerRadius(8)
            Spacer()
            Text(title)
                .foregroundColor(Color.black)
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
