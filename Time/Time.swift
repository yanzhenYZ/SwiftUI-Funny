//
//  Time.swift
//  Time
//
//  Created by yanzhen on 2020/10/22.
//

import WidgetKit
import SwiftUI

struct TimeProvider: TimelineProvider {
    func placeholder(in context: Context) -> TimeEntry {//启动
        return TimeEntry(date: Date())
    }
    // 添加小组件时显示的内容
    func getSnapshot(in context: Context, completion: @escaping (TimeEntry) -> Void) {
        // 取数据
        let entry = TimeEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<TimeEntry>) -> Void) {
        let entry = TimeEntry(date: Date())
        let timeline = Timeline(entries: [entry], policy: .atEnd)
        completion(timeline)//数据传输--001
    }
}

struct PlaceholderView : View {
    var body: some View {
        Text("Loading...")
    }
}

struct TimeEntry: TimelineEntry {
    let date: Date
    let manager = TimeManager.manager
}

struct TimeEntryView : View {
    let entry: TimeEntry
    var body: some View {
        TimeView()
    }
}

@main
struct Time: Widget {
    let kind: String = "Time"

    var body: some WidgetConfiguration {//数据接收--001
        StaticConfiguration(kind: kind, provider: TimeProvider()) { entry in
            TimeEntryView(entry: entry)
        }
        .configurationDisplayName("Funny")
        .description("看到你也得不到")
        .supportedFamilies([.systemMedium])
    }
}

struct Today_Previews: PreviewProvider {
    static var previews: some View {
        TimeEntryView(entry: TimeEntry(date: Date()))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
