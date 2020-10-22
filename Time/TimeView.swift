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
        HStack {
            Spacer()
            TimeCircleView(title: "CPU", subTitle: TimeManager.manager.cpuUsageStr, progress: TimeManager.manager.cpuUsage)
            Spacer()
            TimeCircleView(title: "内存", subTitle: TimeManager.manager.memoryUsageStr, progress: TimeManager.manager.memoryUsage)
            Spacer()
            TimeCircleView(title: TimeManager.manager.wifiTitle, subTitle: TimeManager.manager.wifiSubTitle)
            Spacer()
        }
        
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}

