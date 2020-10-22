//
//  TimeView.swift
//  TimeExtension
//
//  Created by yanzhen on 2020/10/22.
//

import SwiftUI
import WidgetKit

struct TimeView: View {
    @State private var cpuProgress: CGFloat = 0.2
    @State private var memoryProgress: CGFloat = 0

    var body: some View {
        ZStack {
            Image("Ais")
                .resizable()
            
            HStack {
                Spacer()
                TimeCircleView(title: "CPU", subTitle: FTManager.cpuUsageStr, progress: FTManager.cpuUsage)
                Spacer()
                TimeCircleView(title: "内存", subTitle: FTManager.memoryUsageStr, progress: FTManager.memoryUsage)
                Spacer()
                TimeCircleView(title: FTManager.wifiTitle, subTitle: FTManager.wifiSubTitle)
                Spacer()
            }
        }
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}

