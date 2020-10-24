//
//  FunnyExtension.swift
//  Funny
//
//  Created by yanzhen on 2020/10/24.
//

import Foundation
import SwiftUI

extension Color {
    static func equalGRBColor(_ value: Double) -> Color {
        return Color(red: value/255.0, green: value/255.0, blue: value/255.0)
    }
    
    static func rgbColor(_ r: Double, g: Double, b: Double) -> Color {
        return Color(red: r/255.0, green: g/255.0, blue: b/255.0)
    }
    
}
