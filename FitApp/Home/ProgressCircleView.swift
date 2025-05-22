//
//  ProgressCircleView.swift
//  FitApp
//
//  Created by Kiri4of on 21/05/2025.
//

import SwiftUI

struct ProgressCircleView: View {
    @Binding var progress: Int
    var goal: Int
    var color: Color
    private let width: CGFloat = 20
    
    var body: some View {
        ZStack {
            ZStack {
                Circle()
                    .stroke(color.opacity(0.3), lineWidth: width)
                Circle()
                    .trim(from: 0.0,
                          to: CGFloat(progress) / CGFloat(goal))
                    .stroke(color, style: StrokeStyle(lineWidth: width, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                    .shadow(radius: 5)
            }
        }
    }
}

#Preview {
    ProgressCircleView(progress: .constant(100), goal: 2000, color: .red)
}
